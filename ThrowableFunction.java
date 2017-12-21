import java.util.function.Function;
/**
* a simple wrapper class that converts all exceptions to RunTimeException. 
* Checked Exceptions are devail! for functional programming and this can alleviate the suffer!
**/
@FunctionalInterface
public interface ThrowableFunction<T,R, E extends Exception> {
    R apply(T t) throws E;
    static  <T, R, E extends Exception>
    Function<T, R> rte(ThrowableFunction<T, R, E> tf) {
        return a -> {
            try {
                return tf.apply(a);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        };
    }
}
