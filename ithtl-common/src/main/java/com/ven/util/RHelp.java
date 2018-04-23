package com.ven.util;

public class RHelp {

    private static final String DEFAULT_SUCCESS_MESSAGE = "SUCCESS";

    /**
     *
     * @param code
     * @param msg
     * @return
     */
    public static Result T(Integer code, String msg){
        Result result = new Result();
        result.setCode(code);
        result.setMsg(msg);
        return result;
    }


    /**
     *
     * @param data
     * @return
     */
    public static Result T(Object data){
        Result result = new Result();
        result.setCode(0);
        result.setMsg(DEFAULT_SUCCESS_MESSAGE);
        result.setData(data);
        return result;
    }

    /**
     *
     * @return
     */
    public static Result T() {
        Result result = new Result();
        result.setCode(0);
        result.setMsg(DEFAULT_SUCCESS_MESSAGE);
        return result;
    }

}
