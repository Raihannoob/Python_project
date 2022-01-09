import re

import mysql.connector
import scrapy
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="Scrap"
)

mycursor = mydb.cursor()

print((mydb))


class QuotesSpider(scrapy.Spider):
    name = "quotes"
    start_urls = [
        'https://www.kayak.co.in/New-York-Hotels.15830.hotel.ksp',
    ]

    def parse(self, response):
        print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++")
        list_data = response.css('div.c44F-item')
        images = []
        names = []
        locations = []
        rattings = []
        prices = []
        lower_portion = []
        for i in range(0, len(list_data), 1):
            value = list_data[i].css(
                'div.soom .soom-photo-wrapper .soom-photo::attr(src)').get()
            if(value != None):
                image = list_data[i].css(
                    'div.soom .soom-photo-wrapper .soom-photo::attr(src)').get()
            else:
                image = "N/A"
            images.append(image)
            print(image)
            value1 = list_data[i].css(
                'div.soom .soom-content-wrapper .soom-description-wrapper .soom-description .soom-name span::text').get()
            if(value1 != None):
                name = list_data[i].css(
                    'div.soom .soom-content-wrapper .soom-description-wrapper .soom-description .soom-name span::text').get()
            else:
                name = "N/A"
            names.append(name)
            print(name)
            value2 = list_data[i].css(
                'div.soom .soom-content-wrapper .soom-description-wrapper .soom-description .soom-rating-wrapper span::text').get()
            if(value2 != None):
                ratting = list_data[i].css(
                    'div.soom .soom-content-wrapper .soom-description-wrapper .soom-description .soom-rating-wrapper span::text').get()
            else:
                ratting = "N/A"
            rattings.append(ratting)
            print(ratting)
            value3 = list_data[i].css(
                'div.soom .soom-content-wrapper .soom-description-wrapper .soom-description .soom-price-section .soom-neighborhood::text').get()
            if(value3 != None):
                location = list_data[i].css(
                    'div.soom .soom-content-wrapper .soom-description-wrapper .soom-description .soom-price-section .soom-neighborhood::text').get()
            else:
                location = "N/A"
            locations.append(location)
            print(location)
            value4 = list_data[i].css(
                'div.soom .soom-content-wrapper .soom-description-wrapper .soom-price::text').get()
            if(value4 != None):
                price = list_data[i].css(
                    'div.soom .soom-content-wrapper .soom-description-wrapper .soom-price::text').get()
            else:
                price = "N/A"
            prices.append(price)
            print(price)
            dataextraction(image, name, ratting, location, price)
            list_lower = list_data[i].css(
                'div.soom .soom-content-wrapper .soom-freebies-section .soom-freebies .soom-freebie')
            sub_list = []
            for j in range(0, len(list_lower), 1):
                sub_list.append(list_lower[j].css('span::text').get())
                # print(list_lower[j].css('span::text').get())
            lower_portion.append(sub_list)
            print()
        for i in range(0, len(list_data), 1):
            print(images[i])
            print(locations[i])
            print(names[i])
            print(rattings[i])
            print(prices[i])
            print(lower_portion[i])
            print()
            dataextraction(images[i], names[i], rattings[i], locations[i], prices[i])
        print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++")


def dataextraction(image, name, ratting, location, price):
    sql = "INSERT INTO data(image,name,ratting,location,price) VALUES ( %s, %s, %s, %s, %s)"

    val = (image, name, ratting, location, price)
    mycursor.execute(sql, val)

    mydb.commit()

    print(mycursor.rowcount, "record inserted.")
