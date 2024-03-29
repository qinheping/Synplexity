data Pair a b where
	Pair :: x: a -> y: b -> Pair a b

measure fst :: Pair a b -> a where
  Pair x y -> x

measure snd :: Pair a b -> b where
  Pair x y -> y

data List a where
	Nil :: List a
	Cons :: x: a -> xs: List a -> List a

termination measure len :: List a -> {Int | _v >= 0} where
  Nil -> 0
  Cons x xs -> 1 + len xs




mergeSort |*| (1,1,0) :: xs: List Int -> {List Int | len _v == len xs && && (xs == []==> _v == []) && (xs == [1]  ==> _v == [1]) && (xs == [2] ==> _v == [2]) && (xs == [3] ==> _v == [3]) && (xs == [4] ==> _v == [4])  }
mergeSort = ??
