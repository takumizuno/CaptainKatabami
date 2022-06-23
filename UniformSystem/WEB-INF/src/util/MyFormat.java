package util;

import java.text.DecimalFormat;

/**
 * 数字のフォーマットに関するクラス
 *
 * @author KandaITSchool
 *
 */
public class MyFormat {

	/**
	 * 引数で与えられた数字を「\xx,xxx」（xは任意の数字）のフォーマットに変換するメソッド
	 *
	 * @param price
	 *            変換対象の数字
	 * @return 与えられた引数を「\xx,xxx」に変換した文字列
	 */
	public String moneyFormat(int price) {
		DecimalFormat df = new DecimalFormat("\u00A5###,##0");
		return df.format(price);
	}

}
