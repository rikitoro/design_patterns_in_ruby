require 'simple_logger'

logger1 = SimpleLogger.instance
logger2 = SimpleLogger.instance
logger1.level = SimpleLogger::INFO

logger1.info('1番目の処理を実行')
logger2.info('2番目の処理を実行')
SimpleLogger.instance.info('コンピュータがチェスゲームに勝ちました')
SimpleLogger.instance.waring('ユニットAE-35の故障が予測されました')
SimpleLogger.instance.error('HAL-9000 機能停止, 緊急動作を実行します!')
