# Company Background

E-List Electronics is a global online retailer focused on consumer electronics, offering products such as laptops, smartphones, monitors, and headphones. Established in 2018, the company runs a digital marketplace that features a broad range of items from multiple manufacturers and third-party sellers. Operating across North America, EMEA, APAC, and LATAM, E-List’s key priorities include growing its international presence, enhancing marketing effectiveness, and boosting customer loyalty through a rewards program. This study aims to address the following questions in effort to make market-based decision to further boost sales and cater to its consumer needs: 

- What is the company's overall sales performance?
- How are the current brands and products doing?
- Has the pilot loyalty program demonstrated success in boosting revenue?
- What information can we get from the marketplace from the refunded items?

To address these concerns, we will explore the analysis in the following sections.

- [**Sales Overview:**](https://github.com/bpananalytics/elist_analysis/blob/main/README.md#sales-overview) Evaluation of historical sales patterns, both globally and by region, focusing on Revenue, Average Order Value (AOV), and Order Count.  
- [**Product Level Performance:**](https://github.com/bpananalytics/elist_analysis/blob/main/README.md#product-trend) An analysis of Company's various product lines, understanding their impact on sales. 
- [**Loyalty Program Success:**](https://github.com/bpananalytics/elist_analysis/blob/main/README.md#loyalty-program) An assessment of the pilot loyalty program and its impact based on sales.  
- [**Refund Analysis:**](https://github.com/bpananalytics/elist_analysis/blob/main/README.md#refund-analysis) An analysis of refunds from purchases made during the four years of the study.
- [**Recommendation:**](https://github.com/bpananalytics/elist_analysis/blob/main/README.md#recommendation) A summary of actionable steps to implement in light of this study's findings. 

# Sales Overview

<img width="1821" height="363" alt="image" src="https://github.com/user-attachments/assets/733b633b-edec-47d6-a8dd-300647bf25fd" />

### North Star Metrics
To better understand Company performance on sales, we focus on three north star metrics. 

- **Revenue** is the aggregate value of each customer order made within a given month, converted to USD if in other currencies. 
- **Average Order Value (AOV**) is the aggregate value of each month's orders in USD, averaged out per order. It highlights the market basket of an average consumer. 
- **Order Count** or Units Sold is the count of orders having been purchased in any given month. 

While these three metrics are observed across different layers of data, further analysis of the dataset reveal revenue highly correlated with order count. As such, either are interchangeable in demonstrating positive or negative sales performance. 

## Sales Revenue
- **Overview**: 2020 marked with incredible revenue growth, up 62% of previous year's revenue. Subsequent years show gradual return to previous levels, suggesting lockdown as a contributing factor to revenue surge.
- **Geography**: North America leads in regional sales, with US making 60% of total revenue.
- **Seasonality**: Q3 consistently records stronger revenue performance, likely driven by seasonaly increase in AOV for the months of July, August, and September. 

## Average Order Value (AOV)
- **Overview**: AOV grew by 30% in 2020, but returned to 2019 levels by 2022. Market contraction of lockdown accessible suppliers may be contributing factor to AOV growth, with associated market expansion of suppliers related to AOV decline.
- **Geography**: APAC has the highest AOV. But by country, VG leads in AOV for all sales in the time frame of 2019-2022. 
- **Seasonality**: Q3 has high AOV performance, likely driven by summer purchases and increased seasonal purchasing activity.  

## Order Count 
- **Overview**: Number of Orders experienced dramatic increase in 2020, followed by gradual increase in 2021 and return towards 2019 levels by 2022.
- **Geography**: North America outperforms all other regions in order count, of which US contributes to 60% of all orders. EMEA is next best performer, with GB accounting for 10% of all orders.
- **Seasonality**: Order Count experiences dips in February and October, likely due to end of holiday season in February and end of summer purchases in October respectively. 

# Deep Dive Analysis

## About the Data

<img width="835" height="477" alt="image" src="https://github.com/user-attachments/assets/37befe8e-a928-4160-9d1e-868609b0ce78" />

The dataset contains 108,000 entries for purchases made by customers over the time span of 2019 to 2022. Because Company is an international business, all purchases have been converted to USD for standardization. Within this analysis, several assumptions are being made.

- Currency exchange is negligible in conversion of other currencies to USD equivalent.
- Inflation factors and interactions with transacted currencies are assumed negligble within the time span of four years.
- Revenue recognized by the order reflects the value of the product solely and does not include any undisclosed fees, taxes, or surcharges.  

## Product Trend

<img width="1433" height="798" alt="image" src="https://github.com/user-attachments/assets/4946583f-f921-4fe2-a816-aee5f3270ef3" />

Among brands, Apple dominates in sales, accounting for 50% of total revenue across the entire time period from 2019 to 2022. Part of this market dominance may be attributed to Company's diverse shelf of products like the Airpods, the Macbook, and the iPhone; the former two being the most popular product of the Brand. By order count, Airpod headphones outperforms all other products with 48,000 units sold, with the next popular product being the no-brand gaming monitor which sold 23,000 units. However, it should be noted that by revenue, the order placement for these two products are reversed, where the gaming monitor is sold at a greater pricepoint and hence generates more revenue than the Airpod headphones. 

<img width="650" height="237" alt="image" src="https://github.com/user-attachments/assets/f17db452-67d1-470c-a20e-e7dd0fd01eaa" />

While the airpods and gaming monitor take first place for order count and gross revenue respectively, the least popular order and least revenue-producing product is the Bose Soundsport Headphone, having only sold 27 units for $3,000 over four years. The soundsport headphone underperforms the Airpod headphone by a huge margin, highlighting the stark contrasting behavior. While the case can be made that inclusion  of the Bose headphone may inadvertantly upsell the Apple Airpod, assuming a perfect competition market online, it is unlikely that this may be the case since the effect is diluted by presence of many other online retailers who also sell headphones for competitive prcies.  

## Loyalty Program

<img width="1528" height="832" alt="image" src="https://github.com/user-attachments/assets/0227413d-dbf8-4773-b860-c880833212ab" />

The loyalty program has seen an upward trend in revenue, contrast to purchasing behavior of non-loyalty customers. Net revenue generated for loyalty program customers up 613% in 2020, just one year into effect. Following 2020 revenue boon, loyalty program still exhibits benefits in retaining customers, with greater order counts coming from loyalty program than that of non-loyalty customers for consecutive years of 2021 and 2022. As such, the loyalty program has demonstrated a positive trend towards better sales performance.  

<img width="1507" height="832" alt="image" src="https://github.com/user-attachments/assets/97eafb92-21bb-4515-970f-fd36d0fefb1d" />

Looking more closely to performance, the loyalty program has experienced a few successes, in which Apple Airpods and Samsung Webcam has more buyers coming from the loyalty program than not. This demonstrates early success in the program, especially for Apple Airpods which accounts for second-most revenue generating item for the Company. More than half of this highly sought product is accounted for by loyalty customers. 

## Refund Analysis

<img width="1235" height="736" alt="image" src="https://github.com/user-attachments/assets/5ec7ed08-2b8d-44e0-af98-25ae868cbe2d" />

Refunds were made with much overlap during the revenue boon during the year 2020 and 2021, after which buyers are conservative with their purchasing and buy only what they needed. As such, from August 2021 to end of 2022, no refunds were requested by buyers. Of which, the bulk of revenue loss from refunds were from Macbook air (33%), gaming monitors (29%), and Apple Airpod (19%). However, by volume, the most refunded product is Apple Airpods accounting for 49% of the returned items. The least refunded products were the bose headphones followed by the Apple iphone. The former being niche in appeal while the latter having a functional necessity for everyday use. While the loyalty program issues slightly more refunds by volume, non-loyalty accounts for a larger share of revenue loss, representing 62% of all refunded revenue. Unsurprisingly, North America accounted for 56% of the refunds, followed by EMEA and APAC, paralleling Company's customer base. Most refunded items have a delivery time between 5-10 days, but at similar levels. As such, it is unlikely that delivery speed is a factor in any of the refunds. 
  Interesting to note however, refunds were absent from the data following 2021, which could suggest improper documentation or a processing issue with billing. Absence of this data may skew the analysis for refunds and hence may not capture the entire picture. Additional research into procedural documentation and billing confirmation may be suggested to better understand whether or not the analysis may be missing information. 

# Recommendations

## **Expansion of Apple Product Line**

<img width="887" height="452" alt="image" src="https://github.com/user-attachments/assets/c0c28890-6292-49b5-8615-da124ca3115c" />

Based on brand comparisons by revenue, Apple has consistently outsold all other brand products year after year since 2019, with 27% of Company's revenue coming from Airpods and 22% coming from Macbook. Accounting for nearly 50% of Company's total revenue coming from Apple products alone between the years 2019-2022, Apple consumption demands is remarkably high and sticky. Even with demand falling post-2020 with increased supply competition, the strong preference of Apple still outweighs other product line, demonstrating a substantial brand loyalty. Capitalizing on the Apple brand and image by selling more of their highyly demanded products would suggest a likely boost to revenue growth.  

## **Removal of Bose Product Line**

<img width="765" height="163" alt="image" src="https://github.com/user-attachments/assets/f56edbd9-f801-42cf-a49a-e988356a5f8a" />

Bose has experienced negative growth rate in revenue over the years, with staggering 91% revenue contraction in 2022 compared to 2021, of which also experienced a substantial revenue contraction. Removal of the Bose product line will result in better catering to shifting consumer demands and open valuable operational resources and capacity towards better selling more profitable brands like Apple. With the year over year declining trend for Bose, this would be a conservative choice that can be safely made to increase the bottom line. 

## **Center Customer Base**

<img width="752" height="452" alt="image" src="https://github.com/user-attachments/assets/e4337df8-ed15-4e2f-b93f-29a011c2a2e6" />

Of the highest performers, Company has 61% of revenue tied to US consumer base. This suggests that specializing towards a specific demographic like the US may enable further market penetration and allow for better allocation of logistical resources such as currency exchange, shipping, and localization. 

## **Boost Loyalty Program**

<img width="1817" height="383" alt="image" src="https://github.com/user-attachments/assets/24c48754-6428-4ec3-839f-3c6447ce8fee" />

By 2022, Loyalty Program customers has outperformed Non-loyalty customers on all marks for revenue, AOV, and order count. Loyalty Program customers are making more orders at higher value points than non-loyal customers. This has demonstrated success in the loyalty program, with 2021 being a pivotal year where consumers have adapted, embraced, and sees value in using the program. To capitalize on this effect more, Company should consider boosting enrollment in this program and incentivize new patrons to join. 

## **Optimize Summer marketing**

<img width="1802" height="347" alt="image" src="https://github.com/user-attachments/assets/722ff278-0ffc-46b9-96da-2f89b00a0ae0" />

Summer, marked by the months of July, August, and September show upward trajectory on Revenue, AOV, and Order Count. This suggests that consumer are more apt to spend and make purchases during Q3 months of high activity. Preparing marketing campaigns geared towards this season will capture consumer demands during their time of least resistance to purchasing. 
