.class public Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/updateserverconnection/structs/UpdateFileListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Date;

.field private h:I

.field private i:Z

.field private j:Z

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->b:Ljava/lang/String;

    .line 19
    iput v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->c:I

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->d:Ljava/lang/String;

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->e:I

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->f:Ljava/lang/String;

    .line 23
    iput-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->g:Ljava/util/Date;

    .line 24
    iput v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->h:I

    .line 25
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->i:Z

    .line 26
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->j:Z

    .line 28
    iput v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->k:I

    .line 30
    iput-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->a:Ljava/util/ArrayList;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->l:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->m:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->b:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public deviceNotSupported()Z
    .locals 2

    .prologue
    .line 262
    iget v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->k:I

    if-lez v0, :cond_0

    .line 263
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->k:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    .line 265
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fileListContains(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getUpdateFileList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/updateserverconnection/structs/UpdateFileListEntry;

    .line 215
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/UpdateFileListEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqualIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 217
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFirstApkFromFileList()Ljava/lang/String;
    .locals 3

    .prologue
    .line 188
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getUpdateFileList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/updateserverconnection/structs/UpdateFileListEntry;

    .line 189
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/UpdateFileListEntry;->isApkFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/UpdateFileListEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getFullSignatureFileFromFileList()Ljava/lang/String;
    .locals 3

    .prologue
    .line 201
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getUpdateFileList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/updateserverconnection/structs/UpdateFileListEntry;

    .line 202
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/UpdateFileListEntry;->isFullSignatureFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/UpdateFileListEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 206
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getLoginLimit()Ljava/util/Date;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->g:Ljava/util/Date;

    return-object v0
.end method

.method public getProductId()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->e:I

    return v0
.end method

.method public getRsaPublicKeyBase64()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getServerStatus()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->c:I

    return v0
.end method

.method public getSessionKey()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->h:I

    return v0
.end method

.method public getShortVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->d:Ljava/lang/String;

    .line 65
    const-string v1, "MSA_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 66
    const-string v1, "_("

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 67
    if-lez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_0
    return-object v0
.end method

.method public getUpdateActionContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateActionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateComponent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateFileList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/updateserverconnection/structs/UpdateFileListEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->d:Ljava/lang/String;

    return-object v0
.end method

.method public isConfirmNecessary()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->i:Z

    return v0
.end method

.method public isUpdateProcessed()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->j:Z

    return v0
.end method

.method public setServerStatus(I)V
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->c:I

    .line 90
    return-void
.end method

.method public setServerStatusAndKeyFromServerResponse(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 138
    const/4 v0, -0x2

    iput v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->c:I

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-static {p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;->checkStatus(Ljava/lang/StringBuilder;)I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->c:I

    .line 143
    invoke-static {p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;->getNextAuthKey(Ljava/lang/StringBuilder;)I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->h:I

    goto :goto_0
.end method

.method public setUpdateActionContentFromServerResponse(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 278
    if-nez p1, :cond_0

    .line 279
    const/4 v0, -0x2

    iput v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->c:I

    .line 284
    :goto_0
    return-void

    .line 283
    :cond_0
    invoke-static {p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;->getUpdateActionContent(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method public setUpdateActionFromServerResponse(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 269
    if-nez p1, :cond_0

    .line 270
    const/4 v0, -0x2

    iput v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->c:I

    .line 275
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-static {p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;->getUpdateActionId(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->l:Ljava/lang/String;

    goto :goto_0
.end method

.method public setUpdateFileListFromServerResponse(Ljava/lang/StringBuilder;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v2, 0x0

    .line 152
    if-nez p1, :cond_1

    .line 153
    const/4 v0, -0x2

    iput v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->c:I

    .line 181
    :cond_0
    return-void

    .line 157
    :cond_1
    invoke-static {p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;->checkStatus(Ljava/lang/StringBuilder;)I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->c:I

    .line 158
    invoke-static {p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;->getNextAuthKey(Ljava/lang/StringBuilder;)I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->h:I

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->a:Ljava/util/ArrayList;

    .line 162
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "F=\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 164
    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 165
    const-string v5, "<"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 166
    const-string v5, "||"

    const-string v6, "| |"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "|"

    const-string v6, "#"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 167
    const-string v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 168
    :cond_2
    const-string v5, "#"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 170
    array-length v5, v0

    if-le v5, v9, :cond_3

    .line 172
    :try_start_0
    new-instance v5, Lde/gdata/mobilesecurity/updateserverconnection/structs/UpdateFileListEntry;

    const/4 v6, 0x0

    aget-object v6, v0, v6

    const/4 v7, 0x2

    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x3

    aget-object v0, v0, v8

    invoke-direct {v5, v6, v7, v0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/UpdateFileListEntry;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 174
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_3
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setUpdateInfoFromXmlFile(Ljava/lang/StringBuilder;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 226
    if-nez p1, :cond_1

    .line 227
    const/4 v0, -0x2

    iput v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->c:I

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 233
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 234
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 235
    new-instance v0, Ljava/io/StringReader;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 236
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 237
    :goto_1
    if-eq v0, v4, :cond_0

    .line 238
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 239
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "sdkversion"

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqualIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    const/4 v0, 0x0

    :goto_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 241
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "minSdkVersion"

    invoke-static {v2, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqualIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    .line 243
    :try_start_1
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->k:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 240
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 250
    :cond_3
    :try_start_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    goto :goto_1

    .line 252
    :catch_0
    move-exception v0

    .line 253
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 254
    const/16 v0, 0x1645

    iput v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->c:I

    goto :goto_0

    .line 244
    :catch_1
    move-exception v2

    goto :goto_3
.end method

.method public setUpdateProcessed()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->j:Z

    .line 94
    return-void
.end method

.method public setVersionInfoFromServerResponse(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 113
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->d:Ljava/lang/String;

    .line 115
    if-nez p1, :cond_1

    .line 116
    const/4 v0, -0x2

    iput v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->c:I

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-static {p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;->checkStatus(Ljava/lang/StringBuilder;)I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->c:I

    .line 121
    iget v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->c:I

    if-nez v0, :cond_0

    .line 122
    invoke-static {p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;->getVersion(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->d:Ljava/lang/String;

    .line 123
    invoke-static {p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;->getLimit(Ljava/lang/StringBuilder;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->g:Ljava/util/Date;

    .line 124
    invoke-static {p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;->getNextAuthKey(Ljava/lang/StringBuilder;)I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->h:I

    .line 125
    invoke-static {p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;->getRsaPublicKeyBase64(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->f:Ljava/lang/String;

    .line 126
    invoke-static {p1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ResponseParser;->getProductId(Ljava/lang/StringBuilder;)I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->e:I

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->i:Z

    goto :goto_0
.end method
