# https://www.codewars.com/kata/string-reversing-changing-case-etc

require 'awesome_print'

def reverse_and_mirror(string1,string2)
  string2.reverse.swapcase + "@@@" + string1.reverse.swapcase + string1.swapcase
end

answer = reverse_and_mirror("FizZ","buZZ")
ap answer
# "zzUB@@@zZIffIZz"

answer = reverse_and_mirror("String Reversing","Changing Case")
ap answer
# "ESAc GNIGNAHc@@@GNISREVEr GNIRTssTRING rEVERSING"

answer = reverse_and_mirror("way to inVert","caSe of string")
ap answer
# "GNIRTS FO EsAC@@@TREvNI OT YAWWAY TO INvERT"

answer = reverse_and_mirror("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua","Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate")
ap answer
# "ETATPULOV AE NI IUQ TIREDNEHERPER ERUI MUE LEV METUA SIUq ?RUTAUQESNOC IDOMMOC AE XE DIUQILA TU ISIN ,MASOIROBAL TIPICSUS SIROPROC MALLU MENOITATICREXE MURTSON SIUQ ,MAINEV AMINIM DA MINE Tu@@@AUQILA ANGAM EROLOD TE EROBAL TU TNUDIDICNI ROPMET DOMSUIE OD DES ,TILE GNICSIPIDA RUTETCESNOC ,TEMA TIS ROLOD MUSPI MEROllOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISCING ELIT, SED DO EIUSMOD TEMPOR INCIDIDUNT UT LABORE ET DOLORE MAGNA ALIQUA"
