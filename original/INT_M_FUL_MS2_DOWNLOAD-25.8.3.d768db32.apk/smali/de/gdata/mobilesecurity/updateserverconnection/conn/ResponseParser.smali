.class public Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkStatus(Ljava/lang/StringBuilder;)I
    .locals 4

    .prologue
    const/4 v0, -0x2

    const/4 v1, -0x1

    .line 86
    if-nez p0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    const-string v2, "FAILED"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 92
    const-string v0, "<up ERR="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 95
    const-string v0, "<up ERR="

    .line 97
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 98
    if-eq v2, v1, :cond_2

    .line 100
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v3, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServerResponce.init(): Server returned Error code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    .line 104
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    move v0, v1

    .line 110
    goto :goto_0

    .line 114
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAccountData(Ljava/lang/StringBuilder;)Lde/gdata/mobilesecurity/updateserverconnection/structs/AuthStruct;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v1, 0x0

    .line 261
    invoke-static {p0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;->checkStatus(Ljava/lang/StringBuilder;)I

    move-result v2

    .line 262
    if-eqz v2, :cond_0

    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/structs/AuthStruct;

    invoke-direct {v0, v2, v1, v1}, Lde/gdata/mobilesecurity/updateserverconnection/structs/AuthStruct;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 305
    :goto_0
    return-object v0

    .line 264
    :cond_0
    const-string v0, " Z="

    .line 266
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 268
    if-ne v2, v5, :cond_1

    new-instance v3, Lde/gdata/mobilesecurity/updateserverconnection/structs/AuthStruct;

    invoke-direct {v3, v4, v1, v1}, Lde/gdata/mobilesecurity/updateserverconnection/structs/AuthStruct;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v2, v0

    .line 274
    const-string v0, " "

    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 276
    if-ne v0, v5, :cond_2

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 279
    :cond_2
    invoke-virtual {p0, v2, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServerResponse.getAccountData() Z="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 283
    new-instance v2, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;-><init>()V

    const/16 v3, 0x1e61

    invoke-virtual {v2, v0, v3}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->Decode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServerResponse.getAccountData() dec="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 287
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 289
    array-length v2, v0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    new-instance v2, Lde/gdata/mobilesecurity/updateserverconnection/structs/AuthStruct;

    invoke-direct {v2, v4, v1, v1}, Lde/gdata/mobilesecurity/updateserverconnection/structs/AuthStruct;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_3
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 300
    new-instance v3, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;

    invoke-direct {v3}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;-><init>()V

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v3, v4, v2}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->Decode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 301
    new-instance v4, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;

    invoke-direct {v4}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;-><init>()V

    const/4 v5, 0x2

    aget-object v0, v0, v5

    invoke-virtual {v4, v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->Decode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ServerResponse.getAccountData() username="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 303
    if-eqz v3, :cond_4

    if-nez v2, :cond_5

    :cond_4
    move-object v0, v1

    goto/16 :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/structs/AuthStruct;

    invoke-direct {v0, v4, v1, v1}, Lde/gdata/mobilesecurity/updateserverconnection/structs/AuthStruct;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 305
    :cond_5
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/structs/AuthStruct;

    invoke-direct {v0, v6, v3, v2}, Lde/gdata/mobilesecurity/updateserverconnection/structs/AuthStruct;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static getLimit(Ljava/lang/StringBuilder;)Ljava/util/Date;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 310
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 319
    :goto_0
    return-object v0

    .line 312
    :cond_0
    const/16 v1, 0x1a

    const/16 v2, 0x22

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 313
    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 314
    const/4 v3, 0x4

    const/4 v4, 0x6

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 315
    const/4 v4, 0x6

    const/16 v5, 0x8

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 316
    new-instance v4, Ljava/util/GregorianCalendar;

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v4, v2, v3, v1}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v4}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 317
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getNextAuthKey(Ljava/lang/StringBuilder;)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 186
    if-nez p0, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v0

    .line 194
    :cond_1
    const-string v1, "<up "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 195
    if-eq v1, v0, :cond_0

    .line 200
    const-string v2, " "

    add-int/lit8 v3, v1, 0x4

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 201
    if-eq v2, v0, :cond_0

    .line 206
    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 211
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 216
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getProductId(Ljava/lang/StringBuilder;)I
    .locals 3

    .prologue
    .line 221
    if-eqz p0, :cond_0

    const-string v0, "<up "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const-string v0, "<up "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "/>"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    const-string v1, "/>"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<up \\w+\\W+(\\w+)\\W+.*"

    const-string v2, "$1"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public static getRed(Ljava/lang/StringBuilder;)Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v9, -0x2

    const/4 v7, -0x1

    .line 37
    invoke-static {p0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;->checkStatus(Ljava/lang/StringBuilder;)I

    move-result v2

    .line 38
    if-eqz v2, :cond_0

    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    invoke-direct {v0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;-><init>(I)V

    .line 76
    :goto_0
    return-object v0

    .line 41
    :cond_0
    const-string v0, "<p>Q="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 42
    const-string v2, "<p>C="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 43
    const-string v3, "<p>S="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 44
    const-string v4, "<p>D="

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 45
    const-string v4, "<p>O="

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 48
    if-eq v0, v7, :cond_1

    if-eq v3, v7, :cond_1

    if-eq v2, v7, :cond_1

    if-ne v5, v7, :cond_2

    .line 49
    :cond_1
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    invoke-direct {v0, v9}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;-><init>(I)V

    goto :goto_0

    .line 52
    :cond_2
    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;->parseForParenthesizedValue(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {p0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;->parseForParenthesizedValue(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-static {p0, v3}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;->parseForParenthesizedValue(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-static {p0, v5}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;->parseForParenthesizedValue(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v5

    .line 56
    invoke-static {p0, v6}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;->parseForParenthesizedValue(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v6

    .line 57
    const-string v7, ""

    .line 60
    const-string v2, "http"

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 61
    const-string v2, "http"

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v7, ";"

    const-string v8, ""

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 62
    const-string v2, "http"

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 65
    :cond_3
    const-string v2, "\\n"

    const-string v8, "\n"

    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 69
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 71
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    invoke-direct/range {v0 .. v7}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 76
    :cond_4
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    invoke-direct {v0, v9}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;-><init>(I)V

    goto/16 :goto_0
.end method

.method public static getRsaPublicKeyBase64(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    if-nez p0, :cond_1

    const-string v0, ""

    .line 177
    :cond_0
    :goto_0
    return-object v0

    .line 169
    :cond_1
    invoke-static {p0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;->checkStatus(Ljava/lang/StringBuilder;)I

    move-result v0

    .line 170
    if-eqz v0, :cond_2

    const-string v0, ""

    goto :goto_0

    .line 171
    :cond_2
    const-string v0, "K=\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 172
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const-string v0, ""

    goto :goto_0

    .line 174
    :cond_3
    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;->parseForParenthesizedValue(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v0

    .line 175
    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0
.end method

.method public static getSubscriptionState(Ljava/lang/StringBuilder;)I
    .locals 4

    .prologue
    .line 323
    if-nez p0, :cond_0

    const/4 v0, -0x2

    .line 334
    :goto_0
    return v0

    .line 325
    :cond_0
    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 327
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 329
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Ljava/util/Map;

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 330
    const-string v2, "Status"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_0

    .line 331
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public static getUpdateActionContent(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 361
    if-nez p0, :cond_0

    const-string v0, ""

    .line 380
    :goto_0
    return-object v0

    .line 363
    :cond_0
    invoke-static {p0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;->checkStatus(Ljava/lang/StringBuilder;)I

    move-result v0

    .line 364
    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_0

    .line 366
    :cond_1
    const-string v0, "A=\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 367
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 368
    const-string v0, "ServerResponse.getUpdateActionContent() Start of version String not found"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    .line 369
    const-string v0, ""

    goto :goto_0

    .line 372
    :cond_2
    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;->parseForParenthesizedValue(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v0

    .line 373
    if-nez v0, :cond_3

    .line 374
    const-string v0, "ServerResponse.getUpdateActionContent() Version String not found"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    .line 375
    const-string v0, ""

    goto :goto_0

    .line 378
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServerResponse.getUpdateActionContent(): A="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getUpdateActionId(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 338
    if-nez p0, :cond_0

    const-string v0, ""

    .line 357
    :goto_0
    return-object v0

    .line 340
    :cond_0
    invoke-static {p0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;->checkStatus(Ljava/lang/StringBuilder;)I

    move-result v0

    .line 341
    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_0

    .line 343
    :cond_1
    const-string v0, "A=\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 344
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 345
    const-string v0, "ServerResponse.getUpdateActionId() Start of version String not found"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    .line 346
    const-string v0, ""

    goto :goto_0

    .line 349
    :cond_2
    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;->parseForParenthesizedValue(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v0

    .line 350
    if-nez v0, :cond_3

    .line 351
    const-string v0, "ServerResponse.getUpdateActionId() Version String not found"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    .line 352
    const-string v0, ""

    goto :goto_0

    .line 355
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServerResponse.getUpdateActionId(): A="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getVersion(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 126
    if-nez p0, :cond_0

    const-string v0, ""

    .line 158
    :goto_0
    return-object v0

    .line 129
    :cond_0
    invoke-static {p0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;->checkStatus(Ljava/lang/StringBuilder;)I

    move-result v0

    .line 130
    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_0

    .line 136
    :cond_1
    const-string v0, "V=\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 137
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 139
    const-string v0, "ServerResponse.getVersion() Start of version String not found"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    .line 140
    const-string v0, ""

    goto :goto_0

    .line 144
    :cond_2
    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;->parseForParenthesizedValue(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v0

    .line 145
    if-nez v0, :cond_3

    .line 147
    const-string v0, "ServerResponse.getVersion() Version String not found"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    .line 148
    const-string v0, ""

    goto :goto_0

    .line 156
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServerResponse.getVersion(): V="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static parseForParenthesizedValue(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 230
    if-nez p0, :cond_0

    .line 231
    const-string v1, "ServerResponse.getNextAuthKey() no server response !"

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    .line 251
    :goto_0
    return-object v0

    .line 236
    :cond_0
    const-string v1, "\""

    invoke-virtual {p0, v1, p1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 237
    if-ne v1, v4, :cond_1

    .line 238
    const-string v1, "ServerResponse.parseForParenthesizedValue() First \" not found"

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_1
    const-string v2, "\""

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 244
    if-ne v2, v4, :cond_2

    .line 245
    const-string v1, "ServerResponse.parseForParenthesizedValue() Second \" not found"

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_2
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
