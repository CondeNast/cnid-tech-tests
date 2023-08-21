package main

import "github.com/gin-gonic/gin"

func main() {
	router := gin.Default()
	router.GET("", func(ctx *gin.Context) {
		ctx.JSON(200, "hello world")
	})
	router.Run(":80")
}
