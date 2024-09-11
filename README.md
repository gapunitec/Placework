
## HttpService Reference

#### Get placeworkRing

```http
  GetAsync("https://raw.githubusercontent.com/gapunitec/Placework/%231/Rings/PlaceworkRing1.txt"):split(",")
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `placeworkRing` | `List<string>` | **Required**. List of experience ids |

#### Get placeworkWhitelist

```http
  GetAsync("https://raw.githubusercontent.com/gapunitec/Placework/%231/PlaceworkWhitelist.txt"):split(",")
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `placeworkWhitelist` | `List<string>` | **Required**. List of player ids |

#### Get placeworkSpeed

```http
  GetAsync("https://raw.githubusercontent.com/gapunitec/Placework/%231/PlaceworkSpeed.txt"):split(",")
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `placeworkSpeed` | `int` | **Required**. Teleport speed |

## Author

[@gapunitec](https://www.github.com/gapunitec)

## License

[MIT](https://choosealicense.com/licenses/mit)
