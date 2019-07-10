# README
# DB設計

## shops table
|Column         | Type             |Options                 |
|:--------------|:-----------------|:-----------------------|
|name           |string            |null: false, unique:true|
|genre          |refernces         |foreign_key: true       |
|area           |refernces         |foreign_key: true       |
|address        |text              |                        |
|user           |refernces         |foreign_key: true       |
|url            |text              |null: false, unique:true|

### Assosiation
belongs_to :user
belongs_to :area
belongs_to :genre

##users table 
|Column         | Type             |Options                 |
|:--------------|:-----------------|:-----------------------|
|name           |string            |null: false, unique:true|

### Assosiation
has_many :shops 


## areas table
|Column         | Type             |Options                 |
|:--------------|:-----------------|:-----------------------|
|name           |string            |null: false, unique:true|

### Assosiation
has_many :shops 

## genres table
|Column         | Type             |Options                 |
|:--------------|:-----------------|:-----------------------|
|name           |string            |null: false, unique:true|

