using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MedicineSearch
{
    public   class basicInf
    {
        static string Unoo=null ;
        static string nickName =null;
        public static string getUnoo()
        {
            return Unoo;
        }
        public static void setnickName( string s1)
        {
            nickName = s1;
 
        }
        public static string getnickName()
        {
            return nickName;
        }
        public static void setUnoo( string s1)
        {
            Unoo = s1;
 
        }



    }
}