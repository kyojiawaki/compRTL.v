# cpu.v
VivadoでCPUを作成

1. デコーダ(dec.v)
* 機能
  * 3入力、8出力のデコーダ
  * 3ビットの信号aを入力し、2進数として解釈し、出力信号xの対応するビットを1とする.
2. エンコーダ(enc.v)
* 機能
  * 8入力、4出力のプライオリティエンコーダ
  * 入力aが0でなければ(どれか一つが1であれば)、x[3]に1を出力する
  * 入力aの各ビットの中で、値が1であるビットに対応した2進数をx[2:0]に出力する
  * 同時に二つ以上のビットが1である場合、ビット0に近い方を優先する
 3. マルチプレクサ(mux.v)
 * 機能
   * 8ビットの入力a、bのどちらか一つがsによって選択され、xに出力されるマルチプレクサ
   * sが1であればaをxに、sが0であればbをxに出力する 
4. コンパレータ(cmp.v)
* 機能
  * 8ビットの入力a、bを比較し、結果をgt, lt, eqに出力するコンパレータである。
  * 入力aとbを比較し、同じであればeqに1を出力し、そうでなければ0を出力する。
  * 入力aとbを比較し、aがbより大きければgtに1を出力し、そうでなければ0を出力する。
  * 入力aとbを比較し、aがbより小さければltに1を出力し、そうでなければ0を出力する。
5. 加算器(add.v)
* 機能
  * キャリーイン、キャリーアウト付きの8ビット入力、8ビット出力の加算器
  * 入力a、bとキャリーインcinを加算し、結果をキャリーアウトcoとxに出力する
