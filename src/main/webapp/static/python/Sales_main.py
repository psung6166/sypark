import os
from datetime import datetime
import pandas as pd
import numpy as np
import pymysql.cursors
import pymysql
import sqlalchemy as db
from sqlalchemy import create_engine
import matplotlib.pyplot as plt


class MYSQLConnector:

    def __init__(self, server_, port_, username_, password_, database_, table_name_):
        self.server = server_
        self.port = port_
        self.username = username_
        self.password = password_
        self.database = database_
        self.table_name = table_name_
        self.engine = create_engine(
            f"mysql+pymysql://{self.username}:" + f"{self.password}" + f"@{self.server}:{self.port}/{self.database}?charset=utf8",
            encoding='cp949')
        self.connection = self.engine.connect()
        metadata = db.MetaData()
        self.Table = db.Table(self.table_name, metadata, autoload=True, autoload_with=self.engine)

    def loader(self, limit_):
        query = db.select([self.Table]).limit(limit_)
        ResultProxy = self.connection.execute(query)
        ResultSet = ResultProxy.fetchall()

        """connection = pymysql.connect(host=self.server, port=self.port, user=self.username, password=self.password,
                                     db=self.database, charset='utf8', autocommit=True,
                                     cursorclass=pymysql.cursors.DictCursor)
        cursor = connection.cursor()
        cursor.execute(sql_)
        result = cursor.fetchall()
        connection.close()"""

        print("데이터 로드 완료")
        ResultProxy.close()
        self.df_org = pd.DataFrame(ResultSet, columns=ResultSet[0].keys())
        self.df = self.df_org.copy()
        return self.df_org

    def upload(self, df_):
        pymysql.install_as_MySQLdb()
        # MySQL Connector using pymysql

        df_.to_sql(name=self.table_name, con=self.engine, if_exists='replace', index=False)
        print(f"{self.table_name} db 저장 완료")




class Sales_MYSQLConnector(MYSQLConnector):
    def __init__(self, server_, port_, username_, password_, database_, table_name_):
        super().__init__(server_, port_, username_, password_, database_, table_name_)
        self.group_by = []

    def select_Sales(self):
        self.x_var = 'price_won'
        self.x_agg = 'sum'

    def select_Visitors(self):
        self.x_var = 'user_id'
        self.x_agg = 'count'

    def select_Volumes_Products(self):
        self.x_var = 'product_id'
        self.x_agg = 'count'

    def select_Volumes_Orders(self):
        self.x_var = 'order_id'
        self.x_agg = 'count'

    def filter_Time(self, date_range={'start': 'x', 'end': 'x'}, hour=False, date=False, dayOfWeek=False, month=False,
                    quarter=False):

        # 데이터 기간 필터 적용
        if date_range['start'] == 'x':
            date_range['start'] = self.df['visit_date'].agg('min')

        if date_range['end'] == 'x':
            date_range['end'] = self.df['visit_date'].agg('max')

        self.df = self.df.loc[(self.df['visit_date'] > date_range['start']) &
                              (self.df['visit_date'] < date_range['end'])]

        # 세부사항 1개만 선택해야 함
        chk = 0
        for i in [hour, date, dayOfWeek, month, quarter]:
            if i: chk += 1
        if i > 1:
            raise ValueError("Must check only one condition!")

        # 나머지 시간 관련 필터들 - groupby list를 다른 필터들과 함께 한꺼번에 적용해야 함
        if hour:
            self.group_by.append(self.df['visit_date'].dt.hour)

        if date:
            self.group_by.append(self.df['visit_date'].dt.day)

        if dayOfWeek:
            self.group_by.append(self.df['visit_date'].dt.dayofweek)
            # df_dow.index = ['SUN', 'MON', 'TUE', 'WED', 'THR', 'FRI', 'SAT']

        if month:
            self.group_by.append(self.df['visit_date'].dt.month)

        if quarter:
            self.group_by.append(self.df['visit_date'].dt.quarter)

    def filter_execute(self):
        result = self.df[self.x_var].groupby(self.group_by).agg(self.x_agg)
        result.columns = self.x_var
        self.initiation()
        return result

    def initiation(self):
        self.x_var = ''
        self.x_agg = ''
        self.group_by = []
        self.df = self.df_org.copy()

    def fileter_Department(self, dept_filter=dict):
        """
        dept_filter={'dept': [], 'aisle': [], 'product': []}
        3가지 필터의 항목을 dictionary 안의 list 형태로 받는다. 각 항목은 이름(string)이 아닌 id값을 가지고 있어야 함.
        SELECT ALL을 선택한 경우 [-1]값을 받는다."""
        try:
            if dept_filter['dept'][0] == -1:
                self.group_by.append(self.df['department_id'])
            elif dept_filter['dept']:
                self.df = self.df.loc[self.df['department_id'].isin(dept_filter['dept'])]
                self.group_by.append(self.df['department_id'])
        except KeyError:
            pass

        try:
            if dept_filter['aisle'][0] == -1:
                self.group_by.append(self.df['aisle_id'])
            elif dept_filter['aisle']:
                self.df = self.df.loc[self.df['aisle_id'].isin(dept_filter['aisle'])]
                self.group_by.append(self.df['aisle_id'])
        except KeyError:
            pass

        try:
            if dept_filter['product'][0] == -1:
                self.group_by.append(self.df['product_id'])
            elif dept_filter['product']:
                self.df = self.df.loc[self.df['product_id'].isin(dept_filter['product'])]
                self.group_by.append(self.df['product_id'])
        except KeyError:
            pass


    def filter_Customers(self, customer_filter=dict):
        """
        {'id': []}
        고객id 항목을 dictionary 안의 list 형태로 받는다. 각 항목은 이름(string)이 아닌 id값을 가지고 있어야 함.
                SELECT ALL을 선택한 경우 [-1]값을 받는다."""

        if customer_filter['id'][0] == -1:
            self.group_by.append(self.df['user_id'])
        elif customer_filter['id'] :
            self.df = self.df.loc[self.df['user_id'].isin(customer_filter['id'])]
            self.group_by.append(self.df['user_id'])





class DataAnalyzer:
    def __init__(self, _df, _path):
        self.df = _df
        self.path = _path

    def basic_analysis(self, minimal_=True):
        from pandas_profiling import ProfileReport
        if minimal_:
            title = f'Sales_basic_analysis_minimal'

        else:
            title = f'Sales_basic_analysis_all'

        profile = ProfileReport(self.df, title=title, minimal=minimal_, orange_mode=True)
        profile.to_notebook_iframe()
        save_path = os.path.join(self.path, title) + '.html'
        profile.to_file(save_path)
        print(f'{save_path}')

    def now(self):
        now = datetime.now()
        now_date = f'{str(now.year)}_{str(now.month)}_{str(now.day)}'

    def SalesByProduct(self):
        # 상품별 판매량 분석 모듈
        print(self.df.head())
        print(self.df.info())
        month = df[['visit_date', 'aisle', 'price_won']].groupby(df['visit_date'].dt.strftime("%m")).count()
        month.to_csv('output/data3.csv', index=None)
        plt.plot(month.index, month['price_won'])
        plt.show()

        plt.clf()

        time = df[['visit_date', 'aisle', 'price_won']].groupby(df['visit_date'].dt.strftime("%H")).count()
        time.to_csv('output/data1.csv', index=None)
        plt.plot(time.index, time['price_won'])
        plt.show()

        plt.clf()

        dow = df[['visit_date', 'aisle', 'price_won']].groupby(df['visit_date'].dt.dayofweek).count()
        dow.to_csv('output/data2.csv', index=None)
        plt.plot(['SUN', 'MON', 'TUE', 'WED', 'THR', 'FRI', 'SAT'], dow['price_won'])
        plt.show()


def main(root_path, df, team_list, make_team_cnt):
    pass


if __name__ == '__main__':

    ########## choose test server #############
    # test_server = 'safekorea'
    test_server = 'seongyoon'
    root_path = ''
    minimal = True

    if test_server == 'seongyoon':
        server = '192.168.5.93'
        port = 3306
        username = 'hslee'
        password = 'safekorea'
        database = 'FL_TEST'
        table_name = 'Insta_Cart_All'
    else:
        server = '192.168.5.55'
        port = 8629
        username = 'hslee'
        password = 'safekorea'
        database = 'FL_TEST'
        table_name = 'Insta_Cart_All'

    sql_connector = Sales_MYSQLConnector(server, port, username, password, database, table_name)
    # load_query = """
    # select * from Insta_Cart_All LIMIT 100000;
    # """
    df = sql_connector.loader(limit_=100000)

    print(df)
    sql_connector.select_Sales()
    # sql_connector.filter_Time(hour=True)
    sql_connector.fileter_Department({'dept': [1, 2, 3, 4]})
    result = sql_connector.filter_execute()
    print(result)

    # raise ValueError
    # df.to_csv('output/test.csv', index=None)
    # dataAnalyzer = DataAnalyzer(df, 'output')
    # dataAnalyzer.basic_analysis(minimal_=minimal)
    # dataAnalyzer.SalesByProduct()
