package main

import (
	"time"

	"go.uber.org/zap"
)

func main() {
	zapConfig := zap.NewProductionConfig()
	zapConfig.Level = zap.NewAtomicLevelAt(zap.InfoLevel)

	logger, _ := zapConfig.Build()

	for {
		logger.Error(
			"some error",
			zap.String("params_1", "value 1"),
			zap.String("params_2", "value 2"),
		)

		logger.Info(
			"some info",
			zap.String("params_1", "value 1"),
			zap.String("params_2", "value 2"),
		)

		time.Sleep(time.Second)
	}
}
