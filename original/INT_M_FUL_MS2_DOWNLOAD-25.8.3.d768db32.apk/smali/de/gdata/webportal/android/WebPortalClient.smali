.class public Lde/gdata/webportal/android/WebPortalClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SERVERINFO:Ljava/lang/String; = "serverinfo"

.field static a:Ljavax/net/ssl/X509TrustManager;

.field private static b:Ljava/lang/String;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lde/gdata/webportal/android/Preferences;

.field private e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private f:Lorg/codehaus/jackson/map/ObjectMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, ""

    sput-object v0, Lde/gdata/webportal/android/WebPortalClient;->b:Ljava/lang/String;

    .line 125
    new-instance v0, Lde/gdata/mobilesecurity/util/GDataTrustManager;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/util/GDataTrustManager;-><init>()V

    sput-object v0, Lde/gdata/webportal/android/WebPortalClient;->a:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    iput-object v0, p0, Lde/gdata/webportal/android/WebPortalClient;->f:Lorg/codehaus/jackson/map/ObjectMapper;

    .line 135
    iput-object p1, p0, Lde/gdata/webportal/android/WebPortalClient;->c:Landroid/content/Context;

    .line 136
    new-instance v0, Lde/gdata/webportal/android/Preferences;

    iget-object v1, p0, Lde/gdata/webportal/android/WebPortalClient;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/webportal/android/Preferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/webportal/android/WebPortalClient;->d:Lde/gdata/webportal/android/Preferences;

    .line 137
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/webportal/android/WebPortalClient;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 138
    iget-object v0, p0, Lde/gdata/webportal/android/WebPortalClient;->f:Lorg/codehaus/jackson/map/ObjectMapper;

    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_UNKNOWN_PROPERTIES:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/map/ObjectMapper;->configure(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Z)Lorg/codehaus/jackson/map/ObjectMapper;

    .line 139
    return-void
.end method

.method private a(Lde/gdata/webportal/android/dto/AntiTheftDto;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft;
    .locals 6

    .prologue
    .line 591
    new-instance v1, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft;-><init>()V

    .line 592
    invoke-virtual {p1}, Lde/gdata/webportal/android/dto/AntiTheftDto;->getCommonAction()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft;->setCommonAction(Ljava/lang/Integer;)V

    .line 593
    invoke-virtual {p1}, Lde/gdata/webportal/android/dto/AntiTheftDto;->getEMail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft;->setMail(Ljava/lang/String;)V

    .line 594
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;-><init>()V

    invoke-virtual {p1}, Lde/gdata/webportal/android/dto/AntiTheftDto;->getPassword()Ljava/lang/String;

    move-result-object v2

    const v3, -0x5f8c4059

    invoke-virtual {v0, v2, v3}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->Encode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft;->setPassword(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p1}, Lde/gdata/webportal/android/dto/AntiTheftDto;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft;->setPhone(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p1}, Lde/gdata/webportal/android/dto/AntiTheftDto;->getProfileId()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft;->setProfileId(Ljava/lang/Integer;)V

    .line 597
    invoke-virtual {p1}, Lde/gdata/webportal/android/dto/AntiTheftDto;->getSimChangeAction()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft;->setSimChangeAction(Ljava/lang/Integer;)V

    .line 598
    return-object v1

    .line 596
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)Lde/gdata/mobilesecurity/network/HttpStatusResponse;
    .locals 3

    .prologue
    .line 295
    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, p1, p2, v0, v1}, Lde/gdata/webportal/android/WebPortalClient;->a(Ljava/lang/String;ILjava/lang/Object;Ljava/util/List;)Lde/gdata/mobilesecurity/network/HttpStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;ILjava/lang/Object;)Lde/gdata/mobilesecurity/network/HttpStatusResponse;
    .locals 2

    .prologue
    .line 299
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, p1, p2, p3, v0}, Lde/gdata/webportal/android/WebPortalClient;->a(Ljava/lang/String;ILjava/lang/Object;Ljava/util/List;)Lde/gdata/mobilesecurity/network/HttpStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;ILjava/lang/Object;Ljava/util/List;)Lde/gdata/mobilesecurity/network/HttpStatusResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lde/gdata/mobilesecurity/network/HttpStatusResponse;"
        }
    .end annotation

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lde/gdata/webportal/android/WebPortalClient;->b(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 309
    const/4 v1, 0x0

    .line 311
    :try_start_0
    new-instance v2, Lde/gdata/mobilesecurity/network/RestClient;

    sget-object v3, Lde/gdata/webportal/android/WebPortalClient;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-direct {v2, v0, p2, v3}, Lde/gdata/mobilesecurity/network/RestClient;-><init>(Ljava/net/URL;ILjavax/net/ssl/TrustManager;)V

    .line 312
    sget-object v0, Lde/gdata/webportal/android/WebPortalClient;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lde/gdata/webportal/android/WebPortalClient;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "X-App-Token"

    sget-object v3, Lde/gdata/webportal/android/WebPortalClient;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lde/gdata/mobilesecurity/network/RestClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_0
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    .line 315
    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lde/gdata/mobilesecurity/network/RestClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 325
    :goto_1
    return-object v0

    .line 317
    :cond_1
    if-eqz p3, :cond_2

    .line 318
    :try_start_1
    iget-object v0, p0, Lde/gdata/webportal/android/WebPortalClient;->f:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0, p3}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 319
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lde/gdata/mobilesecurity/network/RestClient;->setEntity(Ljava/lang/String;Z)V

    .line 321
    :cond_2
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/network/RestClient;->execute()Lde/gdata/mobilesecurity/network/HttpStatusResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method private a()Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;
    .locals 2

    .prologue
    .line 142
    new-instance v0, Lde/gdata/webportal/common/dto/json/AuthRequestDto;

    invoke-direct {v0}, Lde/gdata/webportal/common/dto/json/AuthRequestDto;-><init>()V

    .line 143
    iget-object v1, p0, Lde/gdata/webportal/android/WebPortalClient;->c:Landroid/content/Context;

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/Trial;->getMMSId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/webportal/common/dto/json/AuthRequestDto;->setMachineName(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lde/gdata/webportal/android/WebPortalClient;->d:Lde/gdata/webportal/android/Preferences;

    invoke-virtual {v1}, Lde/gdata/webportal/android/Preferences;->getWebPortalAccessKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/webportal/common/dto/json/AuthRequestDto;->setAccessKey(Ljava/lang/String;)V

    .line 146
    invoke-direct {p0, v0}, Lde/gdata/webportal/android/WebPortalClient;->a(Lde/gdata/webportal/common/dto/json/AuthRequestDto;)Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;

    move-result-object v0

    return-object v0
.end method

.method private a(Lde/gdata/webportal/common/dto/json/AuthRequestDto;)Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 160
    const-string v0, "auth"

    invoke-direct {p0, v0}, Lde/gdata/webportal/android/WebPortalClient;->b(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 164
    :try_start_0
    new-instance v2, Lde/gdata/mobilesecurity/network/RestClient;

    const/4 v3, 0x1

    sget-object v4, Lde/gdata/webportal/android/WebPortalClient;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-direct {v2, v0, v3, v4}, Lde/gdata/mobilesecurity/network/RestClient;-><init>(Ljava/net/URL;ILjavax/net/ssl/TrustManager;)V

    .line 165
    iget-object v0, p0, Lde/gdata/webportal/android/WebPortalClient;->d:Lde/gdata/webportal/android/Preferences;

    invoke-virtual {v0}, Lde/gdata/webportal/android/Preferences;->getWebPortalUsername()Ljava/lang/String;

    move-result-object v3

    .line 166
    iget-object v0, p0, Lde/gdata/webportal/android/WebPortalClient;->d:Lde/gdata/webportal/android/Preferences;

    invoke-virtual {v0}, Lde/gdata/webportal/android/Preferences;->getWebPortalPassword()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-ge v4, v5, :cond_0

    .line 168
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 171
    :cond_0
    invoke-virtual {v2, v3, v0}, Lde/gdata/mobilesecurity/network/RestClient;->setCredentials(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lde/gdata/webportal/android/WebPortalClient;->f:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 173
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lde/gdata/mobilesecurity/network/RestClient;->setEntity(Ljava/lang/String;Z)V

    .line 174
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/network/RestClient;->execute()Lde/gdata/mobilesecurity/network/HttpStatusResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 180
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatus()I

    move-result v0

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_1

    .line 181
    new-instance v0, Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;

    invoke-direct {v0}, Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;-><init>()V

    .line 182
    invoke-virtual {v0, v7}, Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;->setError(Z)V

    .line 183
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;->setStatusCode(I)V

    .line 184
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;->setErrorMessage(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;->getStatusCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 203
    :goto_0
    return-object v0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 177
    goto :goto_0

    .line 189
    :sswitch_0
    iget-object v1, p0, Lde/gdata/webportal/android/WebPortalClient;->d:Lde/gdata/webportal/android/Preferences;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lde/gdata/webportal/android/Preferences;->setWebPortalAccesskey(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lde/gdata/webportal/android/WebPortalClient;->d:Lde/gdata/webportal/android/Preferences;

    invoke-virtual {v1, v6}, Lde/gdata/webportal/android/Preferences;->setWebPortalEnabled(Z)V

    goto :goto_0

    .line 197
    :cond_1
    :try_start_1
    iget-object v0, p0, Lde/gdata/webportal/android/WebPortalClient;->f:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;

    invoke-virtual {v0, v3, v4}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;

    .line 199
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatus()I

    move-result v2

    invoke-virtual {v0, v2}, Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;->setStatusCode(I)V

    .line 200
    invoke-virtual {v0}, Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;->getToken()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lde/gdata/webportal/android/WebPortalClient;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 202
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 203
    goto :goto_0

    .line 186
    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_0
        0x19a -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 290
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "ETag"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 291
    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/webportal/android/dto/ProfileDto;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 578
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 579
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/webportal/android/dto/ProfileDto;

    .line 580
    new-instance v3, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile;

    invoke-direct {v3}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile;-><init>()V

    .line 581
    invoke-virtual {v0}, Lde/gdata/webportal/android/dto/ProfileDto;->isEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile;->setEnabled(Ljava/lang/Boolean;)V

    .line 582
    invoke-virtual {v0}, Lde/gdata/webportal/android/dto/ProfileDto;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile;->setId(Ljava/lang/Long;)V

    .line 583
    invoke-virtual {v0}, Lde/gdata/webportal/android/dto/ProfileDto;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile;->setName(Ljava/lang/String;)V

    .line 584
    invoke-virtual {v0}, Lde/gdata/webportal/android/dto/ProfileDto;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile;->setType(Ljava/lang/Integer;)V

    .line 585
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 587
    :cond_0
    return-object v1
.end method

.method private a(Lde/gdata/mobilesecurity/network/HttpStatusResponse;)Z
    .locals 2

    .prologue
    .line 452
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatus()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatus()I

    move-result v0

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Lde/gdata/webportal/android/g;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 209
    const-string v0, "serverinfo"

    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Lde/gdata/webportal/android/WebPortalClient;->a(Ljava/lang/String;I)Lde/gdata/mobilesecurity/network/HttpStatusResponse;

    move-result-object v0

    .line 210
    if-nez v0, :cond_0

    move-object v0, v1

    .line 214
    :goto_0
    return-object v0

    .line 212
    :cond_0
    :try_start_0
    iget-object v2, p0, Lde/gdata/webportal/android/WebPortalClient;->f:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lde/gdata/webportal/android/g;

    invoke-virtual {v2, v0, v3}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/webportal/android/g;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 214
    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/net/URL;
    .locals 3

    .prologue
    .line 329
    .line 331
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lde/gdata/webportal/android/WebPortalClient;->d:Lde/gdata/webportal/android/Preferences;

    invoke-virtual {v1}, Lde/gdata/webportal/android/Preferences;->getWebPortalAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 333
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 335
    new-instance v0, Ljava/net/URL;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    return-object v0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 338
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 344
    iget-object v2, p0, Lde/gdata/webportal/android/WebPortalClient;->c:Landroid/content/Context;

    const-string v3, "WebPortalClient"

    invoke-static {v2, v3}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 345
    new-instance v3, Lde/gdata/mobilesecurity/mms/ProfileSelector;

    iget-object v4, p0, Lde/gdata/webportal/android/WebPortalClient;->c:Landroid/content/Context;

    invoke-direct {v3, v4}, Lde/gdata/mobilesecurity/mms/ProfileSelector;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2, v0}, Lde/gdata/mobilesecurity/mms/ProfileSelector;->storePreferencesInProfile(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 346
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 348
    invoke-direct {p0}, Lde/gdata/webportal/android/WebPortalClient;->d()Lde/gdata/webportal/devicemanager/dto/json/CommonSettingsDto;

    move-result-object v2

    .line 352
    :try_start_0
    iget-object v3, p0, Lde/gdata/webportal/android/WebPortalClient;->f:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v3, v2}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 359
    invoke-static {v3}, Lde/gdata/mobilesecurity/util/MyUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 360
    iget-object v4, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSCommonSettingsHash()Ljava/lang/String;

    move-result-object v4

    .line 361
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 370
    :goto_0
    return v0

    .line 353
    :catch_0
    move-exception v0

    move v0, v1

    .line 354
    goto :goto_0

    .line 355
    :catch_1
    move-exception v0

    move v0, v1

    .line 356
    goto :goto_0

    .line 363
    :cond_0
    const-string v4, "commonSettings"

    const/4 v5, 0x2

    invoke-direct {p0, v4, v5, v2}, Lde/gdata/webportal/android/WebPortalClient;->a(Ljava/lang/String;ILjava/lang/Object;)Lde/gdata/mobilesecurity/network/HttpStatusResponse;

    move-result-object v2

    .line 365
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatus()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_1

    move v0, v1

    goto :goto_0

    .line 367
    :cond_1
    iget-object v1, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setMMSCommonSettingsHash(Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getETag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setMMSCommonSettingsETag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d()Lde/gdata/webportal/devicemanager/dto/json/CommonSettingsDto;
    .locals 4

    .prologue
    .line 374
    new-instance v0, Lde/gdata/webportal/devicemanager/dto/json/CommonSettingsDto;

    invoke-direct {v0}, Lde/gdata/webportal/devicemanager/dto/json/CommonSettingsDto;-><init>()V

    .line 375
    new-instance v1, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPutRequest;

    iget-object v2, p0, Lde/gdata/webportal/android/WebPortalClient;->c:Landroid/content/Context;

    iget-object v3, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v1, v2, v3}, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPutRequest;-><init>(Landroid/content/Context;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    .line 377
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPutRequest;->getClientInfo()Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;

    move-result-object v1

    .line 378
    new-instance v2, Lde/gdata/webportal/devicemanager/dto/client/json/ClientInfoDto;

    invoke-direct {v2}, Lde/gdata/webportal/devicemanager/dto/client/json/ClientInfoDto;-><init>()V

    .line 379
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;->getEngineDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/gdata/webportal/devicemanager/dto/client/json/ClientInfoDto;->setEngineDate(Ljava/util/Date;)V

    .line 380
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;->getEngineType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/gdata/webportal/devicemanager/dto/client/json/ClientInfoDto;->setEngineType(Ljava/lang/Integer;)V

    .line 381
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;->getEngineVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/gdata/webportal/devicemanager/dto/client/json/ClientInfoDto;->setEngineVersion(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;->getProgramVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lde/gdata/webportal/devicemanager/dto/client/json/ClientInfoDto;->setProgramVersion(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0, v2}, Lde/gdata/webportal/devicemanager/dto/json/CommonSettingsDto;->setClientInfo(Lde/gdata/webportal/devicemanager/dto/client/json/ClientInfoDto;)V

    .line 385
    iget-object v1, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/webportal/devicemanager/dto/json/CommonSettingsDto;->setName(Ljava/lang/String;)V

    .line 386
    invoke-direct {p0}, Lde/gdata/webportal/android/WebPortalClient;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/webportal/devicemanager/dto/json/CommonSettingsDto;->setGcmSenderId(Ljava/lang/String;)V

    .line 388
    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 392
    const-string v0, "929996365845"

    .line 394
    iget-object v1, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getGcmSenderId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setGcmSenderId(Ljava/lang/String;)V

    .line 397
    :cond_0
    iget-object v0, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getGcmRegistrationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    new-instance v0, Lde/gdata/mobilesecurity/util/GcmUtilities;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/util/GcmUtilities;-><init>()V

    .line 399
    iget-object v1, p0, Lde/gdata/webportal/android/WebPortalClient;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/GcmUtilities;->register(Landroid/content/Context;)V

    .line 402
    :cond_1
    iget-object v0, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getGcmRegistrationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f()Z
    .locals 3

    .prologue
    .line 417
    new-instance v0, Lde/gdata/webportal/devicemanager/dto/report/json/FileScanReportParam;

    invoke-direct {v0}, Lde/gdata/webportal/devicemanager/dto/report/json/FileScanReportParam;-><init>()V

    .line 418
    invoke-direct {p0}, Lde/gdata/webportal/android/WebPortalClient;->g()Ljava/util/List;

    move-result-object v1

    .line 419
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 424
    :goto_0
    return v0

    .line 420
    :cond_0
    invoke-virtual {v0, v1}, Lde/gdata/webportal/devicemanager/dto/report/json/FileScanReportParam;->setItems(Ljava/util/List;)V

    .line 422
    const-string v1, "fileScanReport"

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lde/gdata/webportal/android/WebPortalClient;->a(Ljava/lang/String;ILjava/lang/Object;)Lde/gdata/mobilesecurity/network/HttpStatusResponse;

    move-result-object v0

    .line 424
    invoke-direct {p0, v0}, Lde/gdata/webportal/android/WebPortalClient;->a(Lde/gdata/mobilesecurity/network/HttpStatusResponse;)Z

    move-result v0

    goto :goto_0
.end method

.method private g()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/gdata/webportal/devicemanager/dto/report/json/FileScanRequestDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    new-instance v0, Lde/gdata/mobilesecurity/mms/json/FileScanReportPutRequest;

    iget-object v1, p0, Lde/gdata/webportal/android/WebPortalClient;->c:Landroid/content/Context;

    iget-object v2, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/mms/json/FileScanReportPutRequest;-><init>(Landroid/content/Context;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    .line 429
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 430
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/FileScanReportPutRequest;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;

    .line 431
    new-instance v3, Lde/gdata/webportal/devicemanager/dto/report/json/FileScanRequestDto;

    invoke-direct {v3}, Lde/gdata/webportal/devicemanager/dto/report/json/FileScanRequestDto;-><init>()V

    .line 432
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/gdata/webportal/devicemanager/dto/report/json/FileScanRequestDto;->setDate(Ljava/util/Date;)V

    .line 433
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/gdata/webportal/devicemanager/dto/report/json/FileScanRequestDto;->setFileName(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;->getVirusName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lde/gdata/webportal/devicemanager/dto/report/json/FileScanRequestDto;->setVirusName(Ljava/lang/String;)V

    .line 435
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 438
    :cond_0
    return-object v1
.end method

.method private h()Z
    .locals 3

    .prologue
    .line 442
    new-instance v0, Lde/gdata/webportal/devicemanager/dto/report/json/ReportParam;

    invoke-direct {v0}, Lde/gdata/webportal/devicemanager/dto/report/json/ReportParam;-><init>()V

    .line 443
    invoke-direct {p0}, Lde/gdata/webportal/android/WebPortalClient;->i()Ljava/util/List;

    move-result-object v1

    .line 444
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 448
    :goto_0
    return v0

    .line 445
    :cond_0
    invoke-virtual {v0, v1}, Lde/gdata/webportal/devicemanager/dto/report/json/ReportParam;->setItems(Ljava/util/List;)V

    .line 446
    const-string v1, "commonReports"

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lde/gdata/webportal/android/WebPortalClient;->a(Ljava/lang/String;ILjava/lang/Object;)Lde/gdata/mobilesecurity/network/HttpStatusResponse;

    move-result-object v0

    .line 448
    invoke-direct {p0, v0}, Lde/gdata/webportal/android/WebPortalClient;->a(Lde/gdata/mobilesecurity/network/HttpStatusResponse;)Z

    move-result v0

    goto :goto_0
.end method

.method private i()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/gdata/webportal/devicemanager/dto/report/json/ReportRequestDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 456
    new-instance v0, Lde/gdata/mobilesecurity/mms/json/CommonReportPutRequest;

    iget-object v1, p0, Lde/gdata/webportal/android/WebPortalClient;->c:Landroid/content/Context;

    iget-object v2, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/mms/json/CommonReportPutRequest;-><init>(Landroid/content/Context;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    .line 458
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 459
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/CommonReportPutRequest;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item;

    .line 460
    new-instance v3, Lde/gdata/webportal/devicemanager/dto/report/json/ReportRequestDto;

    invoke-direct {v3}, Lde/gdata/webportal/devicemanager/dto/report/json/ReportRequestDto;-><init>()V

    .line 461
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/gdata/webportal/devicemanager/dto/report/json/ReportRequestDto;->setDate(Ljava/util/Date;)V

    .line 462
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item;->getMessageData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/gdata/webportal/devicemanager/dto/report/json/ReportRequestDto;->setMessageData(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item;->getMessageId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lde/gdata/webportal/devicemanager/dto/report/json/ReportRequestDto;->setMessageId(Ljava/lang/Integer;)V

    .line 464
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 467
    :cond_0
    return-object v1
.end method


# virtual methods
.method public isAlreadyRegistered()Z
    .locals 3

    .prologue
    .line 219
    invoke-direct {p0}, Lde/gdata/webportal/android/WebPortalClient;->a()Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_0

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SYNC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 224
    :cond_0
    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public register(Ljava/lang/String;)Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;
    .locals 3

    .prologue
    .line 150
    new-instance v0, Lde/gdata/webportal/common/dto/json/AuthRequestDto;

    invoke-direct {v0}, Lde/gdata/webportal/common/dto/json/AuthRequestDto;-><init>()V

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MachineName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/webportal/android/WebPortalClient;->c:Landroid/content/Context;

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/Trial;->getMMSId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/webportal/android/WebPortalClient;->c:Landroid/content/Context;

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/Trial;->getMMSId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lde/gdata/webportal/android/WebPortalClient;->c:Landroid/content/Context;

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/Trial;->getMMSId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/webportal/common/dto/json/AuthRequestDto;->setMachineName(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0, p1}, Lde/gdata/webportal/common/dto/json/AuthRequestDto;->setDeviceToken(Ljava/lang/String;)V

    .line 156
    invoke-direct {p0, v0}, Lde/gdata/webportal/android/WebPortalClient;->a(Lde/gdata/webportal/common/dto/json/AuthRequestDto;)Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;

    move-result-object v0

    return-object v0
.end method

.method public sendReports()Z
    .locals 3

    .prologue
    .line 406
    iget-object v0, p0, Lde/gdata/webportal/android/WebPortalClient;->c:Landroid/content/Context;

    iget-object v1, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/mms/json/FileScanReportPutRequest;->flagItemsToSend(Landroid/content/Context;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    .line 408
    invoke-direct {p0}, Lde/gdata/webportal/android/WebPortalClient;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lde/gdata/webportal/android/WebPortalClient;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 409
    :goto_0
    if-eqz v0, :cond_0

    .line 410
    iget-object v1, p0, Lde/gdata/webportal/android/WebPortalClient;->c:Landroid/content/Context;

    iget-object v2, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/mms/json/FileScanReportPutRequest;->flagSuccess(Landroid/content/Context;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V

    .line 413
    :cond_0
    return v0

    .line 408
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateClientStatus(Lde/gdata/webportal/android/dto/ClientStatus;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 228
    invoke-direct {p0}, Lde/gdata/webportal/android/WebPortalClient;->b()Lde/gdata/webportal/android/g;

    move-result-object v1

    .line 229
    if-nez v1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v0

    .line 232
    :cond_1
    invoke-direct {p0}, Lde/gdata/webportal/android/WebPortalClient;->a()Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;

    move-result-object v1

    .line 233
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;->isError()Z

    move-result v2

    if-nez v2, :cond_0

    .line 236
    invoke-virtual {v1}, Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;->getToken()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/webportal/android/WebPortalClient;->b:Ljava/lang/String;

    .line 237
    const-string v0, "status"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lde/gdata/webportal/android/WebPortalClient;->a(Ljava/lang/String;ILjava/lang/Object;)Lde/gdata/mobilesecurity/network/HttpStatusResponse;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->isOk()Z

    move-result v0

    goto :goto_0
.end method

.method public updateMDMSettings(I)Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 471
    new-instance v4, Lde/gdata/webportal/devicemanager/dto/json/MdmSettingRequestDto;

    invoke-direct {v4}, Lde/gdata/webportal/devicemanager/dto/json/MdmSettingRequestDto;-><init>()V

    .line 472
    invoke-virtual {v4, p1}, Lde/gdata/webportal/devicemanager/dto/json/MdmSettingRequestDto;->setType(I)V

    .line 475
    iget-object v0, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getUiOptionBus()Z

    move-result v0

    if-nez v0, :cond_6

    .line 478
    iget-object v0, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowDevicePasswordSet()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 479
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$CommonActions;->SET_PASSWORD:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/2addr v0, v1

    .line 481
    :goto_0
    iget-object v2, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowRemoteLock()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 482
    sget-object v2, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$CommonActions;->LOCK:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    or-int/2addr v0, v2

    .line 484
    :cond_0
    iget-object v2, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowRemoteMute()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 485
    sget-object v2, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$CommonActions;->MUTE:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    or-int/2addr v0, v2

    .line 487
    :cond_1
    iget-object v2, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowRemoteRing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 488
    sget-object v2, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$CommonActions;->ALARM:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    or-int/2addr v0, v2

    .line 490
    :cond_2
    iget-object v2, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowRemoteWipe()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 491
    sget-object v2, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$CommonActions;->WIPE:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    or-int/2addr v0, v2

    .line 493
    :cond_3
    iget-object v2, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAllowRemoteLocate()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 494
    sget-object v2, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$CommonActions;->LOCATE:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    or-int/2addr v0, v2

    .line 497
    :cond_4
    iget-object v2, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getEmailForLocation()Ljava/lang/String;

    move-result-object v5

    .line 500
    iget-object v2, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->lockOnSimChange()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 501
    sget-object v2, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$SimChangeActions;->LOCK:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    or-int/2addr v2, v1

    .line 503
    :goto_1
    iget-object v6, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->locateOnSimChange()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 504
    sget-object v6, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$SimChangeActions;->LOCATE:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    or-int/2addr v2, v6

    .line 507
    :cond_5
    iget-object v6, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getSMSCommandPassword()Ljava/lang/String;

    move-result-object v6

    .line 508
    iget-object v7, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v7}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getRemotePasswordResetSender()Ljava/lang/String;

    move-result-object v7

    .line 509
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 512
    invoke-static {v8}, Lde/gdata/mobilesecurity/util/MyUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 513
    iget-object v9, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v9}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getAntitheftMd5()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 514
    new-instance v9, Lde/gdata/webportal/android/dto/AntiTheftDto;

    invoke-direct {v9}, Lde/gdata/webportal/android/dto/AntiTheftDto;-><init>()V

    .line 515
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Lde/gdata/webportal/android/dto/AntiTheftDto;->setCommonAction(Ljava/lang/Integer;)V

    .line 516
    invoke-virtual {v9, v5}, Lde/gdata/webportal/android/dto/AntiTheftDto;->setEMail(Ljava/lang/String;)V

    .line 517
    invoke-virtual {v9, v6}, Lde/gdata/webportal/android/dto/AntiTheftDto;->setPassword(Ljava/lang/String;)V

    .line 518
    invoke-virtual {v9, v7}, Lde/gdata/webportal/android/dto/AntiTheftDto;->setPhone(Ljava/lang/String;)V

    .line 519
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Lde/gdata/webportal/android/dto/AntiTheftDto;->setSimChangeAction(Ljava/lang/Integer;)V

    .line 521
    const-string v0, "/mdmSettings/antitheft"

    const/4 v2, 0x2

    invoke-direct {p0, v0, v2, v9}, Lde/gdata/webportal/android/WebPortalClient;->a(Ljava/lang/String;ILjava/lang/Object;)Lde/gdata/mobilesecurity/network/HttpStatusResponse;

    move-result-object v0

    .line 522
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->isOk()Z

    move-result v0

    if-nez v0, :cond_8

    .line 523
    const-string v0, "failed to update antiTheft settings"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    .line 530
    :cond_6
    :goto_2
    const-string v0, "mdmSettings"

    invoke-direct {p0, v0, v3, v4}, Lde/gdata/webportal/android/WebPortalClient;->a(Ljava/lang/String;ILjava/lang/Object;)Lde/gdata/mobilesecurity/network/HttpStatusResponse;

    move-result-object v0

    .line 531
    if-nez v0, :cond_9

    .line 574
    :cond_7
    :goto_3
    return v1

    .line 525
    :cond_8
    iget-object v0, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v8}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAntitheftMd5(Ljava/lang/String;)V

    goto :goto_2

    .line 534
    :cond_9
    :try_start_0
    iget-object v2, p0, Lde/gdata/webportal/android/WebPortalClient;->f:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    const-class v4, Lde/gdata/webportal/android/dto/MdmSettingsDto;

    invoke-virtual {v2, v0, v4}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/webportal/android/dto/MdmSettingsDto;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    if-eqz v0, :cond_7

    .line 541
    iget-object v2, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getUiOptionBus()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 542
    invoke-virtual {v0}, Lde/gdata/webportal/android/dto/MdmSettingsDto;->getProfile()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lde/gdata/webportal/android/dto/MdmSettingsDto;->getProfile()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 543
    new-instance v1, Lde/gdata/mobilesecurity/mms/json/settings/ProfileProxy;

    iget-object v2, p0, Lde/gdata/webportal/android/WebPortalClient;->c:Landroid/content/Context;

    invoke-virtual {v0}, Lde/gdata/webportal/android/dto/MdmSettingsDto;->getProfile()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v4}, Lde/gdata/webportal/android/WebPortalClient;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lde/gdata/mobilesecurity/mms/json/settings/ProfileProxy;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/settings/ProfileProxy;->write()V

    .line 546
    :cond_a
    invoke-virtual {v0}, Lde/gdata/webportal/android/dto/MdmSettingsDto;->getAntiTheft()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/webportal/android/dto/AntiTheftDto;

    .line 547
    invoke-direct {p0, v0}, Lde/gdata/webportal/android/WebPortalClient;->a(Lde/gdata/webportal/android/dto/AntiTheftDto;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft;

    move-result-object v0

    .line 548
    new-instance v2, Lde/gdata/mobilesecurity/mms/json/settings/AntiTheftProxy;

    iget-object v4, p0, Lde/gdata/webportal/android/WebPortalClient;->c:Landroid/content/Context;

    invoke-direct {v2, v4, v0}, Lde/gdata/mobilesecurity/mms/json/settings/AntiTheftProxy;-><init>(Landroid/content/Context;Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft;)V

    .line 549
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/mms/json/settings/AntiTheftProxy;->write()V

    goto :goto_4

    .line 535
    :catch_0
    move-exception v0

    .line 536
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 552
    :cond_b
    invoke-virtual {v0}, Lde/gdata/webportal/android/dto/MdmSettingsDto;->getAntiTheft()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/webportal/android/dto/AntiTheftDto;

    .line 553
    invoke-virtual {v0}, Lde/gdata/webportal/android/dto/AntiTheftDto;->getCommonAction()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 554
    iget-object v6, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    sget-object v2, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$CommonActions;->SET_PASSWORD:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/2addr v2, v5

    if-eqz v2, :cond_c

    move v2, v3

    :goto_6
    invoke-virtual {v6, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowDevicePasswordSet(Z)V

    .line 556
    iget-object v6, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    sget-object v2, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$CommonActions;->LOCK:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/2addr v2, v5

    if-eqz v2, :cond_d

    move v2, v3

    :goto_7
    invoke-virtual {v6, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteLock(Z)V

    .line 557
    iget-object v6, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    sget-object v2, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$CommonActions;->MUTE:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/2addr v2, v5

    if-eqz v2, :cond_e

    move v2, v3

    :goto_8
    invoke-virtual {v6, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteMute(Z)V

    .line 558
    iget-object v6, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    sget-object v2, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$CommonActions;->ALARM:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/2addr v2, v5

    if-eqz v2, :cond_f

    move v2, v3

    :goto_9
    invoke-virtual {v6, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteRing(Z)V

    .line 559
    iget-object v6, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    sget-object v2, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$CommonActions;->WIPE:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/2addr v2, v5

    if-eqz v2, :cond_10

    move v2, v3

    :goto_a
    invoke-virtual {v6, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteWipe(Z)V

    .line 560
    iget-object v6, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    sget-object v2, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$CommonActions;->LOCATE:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/2addr v2, v5

    if-eqz v2, :cond_11

    move v2, v3

    :goto_b
    invoke-virtual {v6, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAllowRemoteLocate(Z)V

    .line 562
    iget-object v2, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/webportal/android/dto/AntiTheftDto;->getEMail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setEmailForLocation(Ljava/lang/String;)V

    .line 564
    invoke-virtual {v0}, Lde/gdata/webportal/android/dto/AntiTheftDto;->getSimChangeAction()Ljava/lang/Integer;

    move-result-object v5

    .line 565
    iget-object v6, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v7, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$SimChangeActions;->LOCK:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    and-int/2addr v2, v7

    if-eqz v2, :cond_12

    move v2, v3

    :goto_c
    invoke-virtual {v6, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setLockOnSimChange(Z)V

    .line 566
    iget-object v6, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v5, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft$SimChangeActions;->LOCATE:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/2addr v2, v5

    if-eqz v2, :cond_13

    move v2, v3

    :goto_d
    invoke-virtual {v6, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setLocateOnSimChange(Z)V

    .line 568
    iget-object v2, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v5, p0, Lde/gdata/webportal/android/WebPortalClient;->c:Landroid/content/Context;

    invoke-virtual {v0}, Lde/gdata/webportal/android/dto/AntiTheftDto;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setSMSCommandPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 569
    iget-object v2, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/webportal/android/dto/AntiTheftDto;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setRemotePasswordResetSender(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_c
    move v2, v1

    .line 554
    goto/16 :goto_6

    :cond_d
    move v2, v1

    .line 556
    goto/16 :goto_7

    :cond_e
    move v2, v1

    .line 557
    goto :goto_8

    :cond_f
    move v2, v1

    .line 558
    goto :goto_9

    :cond_10
    move v2, v1

    .line 559
    goto :goto_a

    :cond_11
    move v2, v1

    .line 560
    goto :goto_b

    :cond_12
    move v2, v1

    .line 565
    goto :goto_c

    :cond_13
    move v2, v1

    .line 566
    goto :goto_d

    :cond_14
    move v1, v3

    .line 574
    goto/16 :goto_3

    :cond_15
    move v2, v1

    goto/16 :goto_1

    :cond_16
    move v0, v1

    goto/16 :goto_0
.end method

.method public updateSettings()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 242
    invoke-direct {p0}, Lde/gdata/webportal/android/WebPortalClient;->b()Lde/gdata/webportal/android/g;

    move-result-object v0

    .line 243
    if-nez v0, :cond_0

    move v0, v1

    .line 285
    :goto_0
    return v0

    .line 246
    :cond_0
    invoke-direct {p0}, Lde/gdata/webportal/android/WebPortalClient;->a()Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;->isError()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    .line 248
    :cond_2
    invoke-virtual {v0}, Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;->getToken()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/webportal/android/WebPortalClient;->b:Ljava/lang/String;

    .line 250
    new-instance v3, Lde/gdata/webportal/devicemanager/dto/json/CommonSettingsDto;

    invoke-direct {v3}, Lde/gdata/webportal/devicemanager/dto/json/CommonSettingsDto;-><init>()V

    .line 253
    iget-object v0, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSCommonSettingsETag()Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-direct {p0}, Lde/gdata/webportal/android/WebPortalClient;->c()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 256
    iget-object v0, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSCommonSettingsETag()Ljava/lang/String;

    move-result-object v0

    .line 259
    :cond_3
    const-string v4, "commonSettings"

    invoke-direct {p0, v0}, Lde/gdata/webportal/android/WebPortalClient;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v4, v2, v3, v5}, Lde/gdata/webportal/android/WebPortalClient;->a(Ljava/lang/String;ILjava/lang/Object;Ljava/util/List;)Lde/gdata/mobilesecurity/network/HttpStatusResponse;

    move-result-object v3

    .line 261
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getETag()Ljava/lang/String;

    move-result-object v4

    .line 262
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 265
    :try_start_0
    iget-object v0, p0, Lde/gdata/webportal/android/WebPortalClient;->f:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lde/gdata/webportal/devicemanager/dto/json/CommonSettingsDto;

    invoke-virtual {v0, v4, v5}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/webportal/devicemanager/dto/json/CommonSettingsDto;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    iget-object v4, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/webportal/devicemanager/dto/json/CommonSettingsDto;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setMMSName(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/network/HttpStatusResponse;->getETag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setMMSCommonSettingsETag(Ljava/lang/String;)V

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeviceName updateSettings "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 276
    :try_start_1
    iget-object v0, p0, Lde/gdata/webportal/android/WebPortalClient;->f:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {p0}, Lde/gdata/webportal/android/WebPortalClient;->d()Lde/gdata/webportal/devicemanager/dto/json/CommonSettingsDto;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/codehaus/jackson/JsonProcessingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 282
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lde/gdata/webportal/android/WebPortalClient;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setMMSCommonSettingsHash(Ljava/lang/String;)V

    :cond_4
    move v0, v2

    .line 285
    goto/16 :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    move v0, v1

    .line 268
    goto/16 :goto_0

    .line 277
    :catch_1
    move-exception v0

    move v0, v1

    .line 278
    goto/16 :goto_0

    .line 279
    :catch_2
    move-exception v0

    move v0, v1

    .line 280
    goto/16 :goto_0
.end method
