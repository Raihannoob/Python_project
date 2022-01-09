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
        'https://www.kayak.co.in/Hyderabad-Hotels.7297.hotel.ksp',
    ]

    def parse(self, response):
        print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++")
        data = response.css('div.c44F-item')
        images = []
        names = []
        locations = []
        rattings = []
        prices = []
        sub_portion = []
        for i in range(0, len(data), 1):
            value = data[i].css(
                'div.soom .soom-photo-wrapper .soom-photo::attr(src)').get()
            if(value != None):
                image = data[i].css(
                    'div.soom .soom-photo-wrapper .soom-photo::attr(src)').get()
            else:
                image = "N/A"
            images.append(image)
            print(image)
            value1 = data[i].css(
                'div.soom .soom-content-wrapper .soom-description-wrapper .soom-description .soom-name span::text').get()
            if(value1 != None):
                name = data[i].css(
                    'div.soom .soom-content-wrapper .soom-description-wrapper .soom-description .soom-name span::text').get()
            else:
                name = "N/A"
            names.append(name)
            print(name)
            value2 = data[i].css(
                'div.soom .soom-content-wrapper .soom-description-wrapper .soom-description .soom-rating-wrapper span::text').get()
            if(value2 != None):
                ratting = data[i].css(
                    'div.soom .soom-content-wrapper .soom-description-wrapper .soom-description .soom-rating-wrapper span::text').get()
            else:
                ratting = "N/A"
            rattings.append(ratting)
            print(ratting)
            value3 = data[i].css(
                'div.soom .soom-content-wrapper .soom-description-wrapper .soom-description .soom-price-section .soom-neighborhood::text').get()
            if(value3 != None):
                location = data[i].css(
                    'div.soom .soom-content-wrapper .soom-description-wrapper .soom-description .soom-price-section .soom-neighborhood::text').get()
            else:
                location = "N/A"
            locations.append(location)
            print(location)
            value4 = data[i].css(
                'div.soom .soom-content-wrapper .soom-description-wrapper .soom-price::text').get()
            if(value4 != None):
                price = data[i].css(
                    'div.soom .soom-content-wrapper .soom-description-wrapper .soom-price::text').get()
            else:
                price = "N/A"
            prices.append(price)
            print(price)
    
            list_lower = data[i].css(
                'div.soom .soom-content-wrapper .soom-freebies-section .soom-freebies .soom-freebie')
            sub_list = []
            for j in range(0, len(list_lower), 1):
                sub_list.append(list_lower[j].css('span::text').get())
            sub_portion.append(sub_list)
            print()
        for i in range(0, len(data), 1):
            print(images[i])
            print(locations[i])
            print(names[i])
            print(rattings[i])
            print(prices[i])
            print(sub_portion[i])
            Amenities = listToStr = ' '.join(
                map(str, sub_portion[i]))
            print(Amenities)
            dataextraction(names[i], locations[i],
                           rattings[i], prices[i], Amenities, images[i])
        print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++")


def dataextraction(name, location, ratting, prices, Amenities, images):
    sql = "INSERT INTO data_from_web(name,location,ratting,prices,Amenities,images) VALUES ( %s, %s, %s, %s, %s, %s)"

    val = (name, location, ratting, prices, Amenities, images)
    mycursor.execute(sql, val)

    mydb.commit()

    print(mycursor.rowcount, "record inserted.")
