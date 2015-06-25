.class public Lcom/bd/android/shared/LicenseProdActivator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LICENSE_DAYS_FIRST_WARNING:I = 0xe

.field public static final LICENSE_DAYS_SECOND_WARNING:I = 0x3

.field public static final LICENSE_DAYS_THIRD_WARNING:I = 0x1

.field private static a:Lcom/bd/android/shared/LicenseProdActivator;


# instance fields
.field private b:[Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:[I

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroid/content/Context;

.field private m:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/bd/android/shared/LicenseProdActivator$IOnProductLicenseChanged;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/bd/android/shared/u;

.field private volatile o:Z

.field private volatile p:Z

.field private q:Ljava/lang/Object;

.field private r:Z

.field private s:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/bd/android/shared/LicenseProdActivator;->a:Lcom/bd/android/shared/LicenseProdActivator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II[ILjava/lang/String;Lcom/bd/android/shared/LicenseProdActivator$IOnProductLicenseChanged;ZLcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v1, p0, Lcom/bd/android/shared/LicenseProdActivator;->b:[Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/bd/android/shared/LicenseProdActivator;->c:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/bd/android/shared/LicenseProdActivator;->d:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/bd/android/shared/LicenseProdActivator;->e:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/bd/android/shared/LicenseProdActivator;->f:Ljava/lang/String;

    .line 37
    iput-boolean v2, p0, Lcom/bd/android/shared/LicenseProdActivator;->g:Z

    .line 39
    iput-object v1, p0, Lcom/bd/android/shared/LicenseProdActivator;->h:[I

    .line 43
    const/16 v0, 0x8f

    iput v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->j:I

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->k:I

    .line 46
    iput-object v1, p0, Lcom/bd/android/shared/LicenseProdActivator;->l:Landroid/content/Context;

    .line 47
    iput-object v1, p0, Lcom/bd/android/shared/LicenseProdActivator;->m:Ljava/util/Vector;

    .line 49
    iput-object v1, p0, Lcom/bd/android/shared/LicenseProdActivator;->n:Lcom/bd/android/shared/u;

    .line 51
    iput-boolean v2, p0, Lcom/bd/android/shared/LicenseProdActivator;->o:Z

    .line 54
    iput-boolean v2, p0, Lcom/bd/android/shared/LicenseProdActivator;->p:Z

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->q:Ljava/lang/Object;

    .line 57
    iput-boolean v2, p0, Lcom/bd/android/shared/LicenseProdActivator;->r:Z

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->s:Ljava/lang/Object;

    .line 214
    iput-object p1, p0, Lcom/bd/android/shared/LicenseProdActivator;->l:Landroid/content/Context;

    .line 216
    iput-object p3, p0, Lcom/bd/android/shared/LicenseProdActivator;->c:Ljava/lang/String;

    .line 217
    iput-object p4, p0, Lcom/bd/android/shared/LicenseProdActivator;->d:Ljava/lang/String;

    .line 218
    iput-boolean p10, p0, Lcom/bd/android/shared/LicenseProdActivator;->g:Z

    .line 221
    iput p6, p0, Lcom/bd/android/shared/LicenseProdActivator;->i:I

    .line 223
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->h:[I

    invoke-direct {p0, v0, p7}, Lcom/bd/android/shared/LicenseProdActivator;->a([I[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->h:[I

    .line 224
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->b:[Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/bd/android/shared/LicenseProdActivator;->a([Ljava/lang/String;Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->b:[Ljava/lang/String;

    .line 227
    iput p5, p0, Lcom/bd/android/shared/LicenseProdActivator;->k:I

    .line 228
    iput-object p8, p0, Lcom/bd/android/shared/LicenseProdActivator;->e:Ljava/lang/String;

    .line 229
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->m:Ljava/util/Vector;

    .line 233
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    invoke-static {}, Lcom/bd/android/shared/u;->a()Lcom/bd/android/shared/u;

    move-result-object v0

    iput-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->n:Lcom/bd/android/shared/u;

    .line 242
    if-eqz p12, :cond_0

    .line 244
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->b:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p9, p11, v1}, Lcom/bd/android/shared/LicenseProdActivator;->a([Ljava/lang/String;Lcom/bd/android/shared/LicenseProdActivator$IOnProductLicenseChanged;Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;Z)V

    .line 251
    :goto_1
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 237
    const-string v0, "Cannot get application versionName for LicenseProdActivator"

    invoke-static {v0}, Lcom/bd/android/shared/BDLogging;->Log_ERROR(Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {p0, p9, p11}, Lcom/bd/android/shared/LicenseProdActivator;->RefreshLicense(Lcom/bd/android/shared/LicenseProdActivator$IOnProductLicenseChanged;Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;)V

    goto :goto_1
.end method

.method private a(Lcom/bd/android/shared/HTTPManager2;Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;[Ljava/lang/String;Z)I
    .locals 3

    .prologue
    const/16 v0, -0x6f

    .line 717
    if-nez p1, :cond_1

    .line 741
    :cond_0
    :goto_0
    return v0

    .line 722
    :cond_1
    invoke-direct {p0, p2, p3, p4}, Lcom/bd/android/shared/LicenseProdActivator;->a(Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;[Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 724
    if-nez v1, :cond_2

    .line 726
    const/16 v0, -0xc9

    goto :goto_0

    .line 729
    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bd/android/shared/HTTPManager2;->PerformPOST(Ljava/lang/String;)Lcom/bd/android/shared/HTTPManager2$ResponseInfo;

    move-result-object v1

    .line 731
    if-eqz v1, :cond_0

    .line 736
    iget v0, v1, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->ErrorType:I

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_3

    .line 738
    iget v0, v1, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->ErrorType:I

    goto :goto_0

    .line 741
    :cond_3
    iget-object v0, v1, Lcom/bd/android/shared/HTTPManager2$ResponseInfo;->sDataResponse:Ljava/lang/String;

    invoke-direct {p0, v0, p3, p2}, Lcom/bd/android/shared/LicenseProdActivator;->a(Ljava/lang/String;[Ljava/lang/String;Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/bd/android/shared/LicenseProdActivator;Lcom/bd/android/shared/HTTPManager2;Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;[Ljava/lang/String;Z)I
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bd/android/shared/LicenseProdActivator;->a(Lcom/bd/android/shared/HTTPManager2;Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;[Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method private a(Lcom/bd/android/shared/s;[Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 918
    iget v0, p1, Lcom/bd/android/shared/s;->i:I

    iget-object v1, p0, Lcom/bd/android/shared/LicenseProdActivator;->h:[I

    invoke-direct {p0, v0, v1}, Lcom/bd/android/shared/LicenseProdActivator;->a(I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/bd/android/shared/s;->d:Ljava/lang/String;

    const-string v1, "valid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 920
    :cond_0
    if-eqz p2, :cond_1

    .line 922
    iget-object v0, p1, Lcom/bd/android/shared/s;->a:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/bd/android/shared/LicenseProdActivator;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 924
    const/16 v0, 0xc9

    .line 929
    :goto_0
    return v0

    :cond_1
    const/16 v0, 0xc8

    goto :goto_0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;)I
    .locals 3

    .prologue
    .line 936
    :try_start_0
    new-instance v0, Lcom/bd/android/shared/LicenseResponseParser;

    iget v1, p0, Lcom/bd/android/shared/LicenseProdActivator;->i:I

    iget v2, p0, Lcom/bd/android/shared/LicenseProdActivator;->j:I

    invoke-direct {v0, p1, v1, v2}, Lcom/bd/android/shared/LicenseResponseParser;-><init>(Ljava/lang/String;II)V

    iget-object v1, p0, Lcom/bd/android/shared/LicenseProdActivator;->l:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/bd/android/shared/LicenseResponseParser;->build(Landroid/content/Context;)Lcom/bd/android/shared/LicenseResponseParser;

    move-result-object v0

    .line 938
    invoke-virtual {v0}, Lcom/bd/android/shared/LicenseResponseParser;->getParseError()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    .line 940
    invoke-virtual {v0}, Lcom/bd/android/shared/LicenseResponseParser;->getParseError()I

    move-result v0

    .line 996
    :goto_0
    return v0

    .line 943
    :cond_0
    iget-boolean v1, p0, Lcom/bd/android/shared/LicenseProdActivator;->g:Z

    if-nez v1, :cond_1

    .line 945
    iget-object v1, p0, Lcom/bd/android/shared/LicenseProdActivator;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bd/android/shared/LicenseProdActivator;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 947
    invoke-virtual {v0}, Lcom/bd/android/shared/LicenseResponseParser;->getAccountdData()Lorg/json/JSONObject;

    move-result-object v1

    .line 949
    if-nez v1, :cond_2

    .line 951
    const-string v1, "com.bd.android.shared.WRONG_LOGIN"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/bd/android/shared/LicenseProdActivator;->a(Ljava/lang/String;Z)V

    .line 969
    :cond_1
    :goto_1
    sget-object v1, Lcom/bd/android/shared/i;->a:[I

    invoke-virtual {p3}, Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 988
    const/16 v0, -0x3e8

    goto :goto_0

    .line 955
    :cond_2
    const-string v2, "pending"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "pending"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 957
    const-string v1, "com.bd.android.shared.PENDING_ACCOUNT"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/bd/android/shared/LicenseProdActivator;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 993
    :catch_0
    move-exception v0

    .line 995
    const-string v0, "Error while parsing license in LicenseProdActivator"

    invoke-static {v0}, Lcom/bd/android/shared/BDLogging;->Log_ERROR(Ljava/lang/String;)V

    .line 996
    const/16 v0, -0xca

    goto :goto_0

    .line 961
    :cond_3
    :try_start_1
    const-string v1, "com.bd.android.shared.PENDING_ACCOUNT"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/bd/android/shared/LicenseProdActivator;->a(Ljava/lang/String;Z)V

    goto :goto_1

    .line 972
    :pswitch_0
    invoke-direct {p0, p2, v0}, Lcom/bd/android/shared/LicenseProdActivator;->d([Ljava/lang/String;Lcom/bd/android/shared/LicenseResponseParser;)I

    move-result v0

    goto :goto_0

    .line 975
    :pswitch_1
    invoke-direct {p0, p2, v0}, Lcom/bd/android/shared/LicenseProdActivator;->c([Ljava/lang/String;Lcom/bd/android/shared/LicenseResponseParser;)I

    move-result v0

    goto :goto_0

    .line 978
    :pswitch_2
    invoke-direct {p0, p2, v0}, Lcom/bd/android/shared/LicenseProdActivator;->b([Ljava/lang/String;Lcom/bd/android/shared/LicenseResponseParser;)I

    move-result v0

    goto :goto_0

    .line 982
    :pswitch_3
    invoke-direct {p0}, Lcom/bd/android/shared/LicenseProdActivator;->b()I

    move-result v0

    goto :goto_0

    .line 985
    :pswitch_4
    invoke-direct {p0, p2, v0}, Lcom/bd/android/shared/LicenseProdActivator;->a([Ljava/lang/String;Lcom/bd/android/shared/LicenseResponseParser;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    .line 969
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private a([Ljava/lang/String;Lcom/bd/android/shared/LicenseResponseParser;)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v1, -0xca

    const/16 v0, 0xc8

    .line 1003
    .line 1005
    invoke-virtual {p2}, Lcom/bd/android/shared/LicenseResponseParser;->hasTSMD()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1007
    const/4 v2, 0x0

    .line 1009
    invoke-virtual {p2}, Lcom/bd/android/shared/LicenseResponseParser;->hasBMS()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1011
    invoke-virtual {p2}, Lcom/bd/android/shared/LicenseResponseParser;->getBMSSerial()Ljava/lang/String;

    move-result-object v2

    .line 1014
    :cond_0
    if-eqz p1, :cond_4

    .line 1016
    invoke-virtual {p2, v2}, Lcom/bd/android/shared/LicenseResponseParser;->getLicenseData(Ljava/lang/String;)Lcom/bd/android/shared/s;

    move-result-object v2

    .line 1018
    if-nez v2, :cond_2

    move v0, v1

    .line 1055
    :cond_1
    :goto_0
    return v0

    .line 1023
    :cond_2
    iget v1, v2, Lcom/bd/android/shared/s;->n:I

    if-eq v0, v1, :cond_3

    .line 1025
    iget v0, v2, Lcom/bd/android/shared/s;->n:I

    goto :goto_0

    .line 1028
    :cond_3
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->n:Lcom/bd/android/shared/u;

    invoke-virtual {v0, v2, v4}, Lcom/bd/android/shared/u;->a(Lcom/bd/android/shared/s;Z)V

    .line 1031
    :cond_4
    const/16 v0, 0xcc

    .line 1032
    goto :goto_0

    .line 1033
    :cond_5
    invoke-virtual {p2}, Lcom/bd/android/shared/LicenseResponseParser;->hasBMS()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1036
    invoke-virtual {p2}, Lcom/bd/android/shared/LicenseResponseParser;->getBMSSerial()Ljava/lang/String;

    move-result-object v2

    .line 1038
    invoke-virtual {p2, v2}, Lcom/bd/android/shared/LicenseResponseParser;->getLicenseData(Ljava/lang/String;)Lcom/bd/android/shared/s;

    move-result-object v2

    .line 1040
    if-nez v2, :cond_6

    move v0, v1

    .line 1042
    goto :goto_0

    .line 1045
    :cond_6
    iget v1, v2, Lcom/bd/android/shared/s;->n:I

    if-eq v0, v1, :cond_7

    .line 1047
    iget v0, v2, Lcom/bd/android/shared/s;->n:I

    goto :goto_0

    .line 1050
    :cond_7
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->n:Lcom/bd/android/shared/u;

    invoke-virtual {v0, v2, v4}, Lcom/bd/android/shared/u;->a(Lcom/bd/android/shared/s;Z)V

    .line 1052
    invoke-direct {p0, v2, p1}, Lcom/bd/android/shared/LicenseProdActivator;->a(Lcom/bd/android/shared/s;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/bd/android/shared/LicenseProdActivator;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->q:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;[Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 773
    .line 774
    invoke-static {}, Lcom/bd/android/shared/u;->a()Lcom/bd/android/shared/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bd/android/shared/u;->j()Ljava/lang/String;

    move-result-object v2

    .line 777
    sget-object v0, Lcom/bd/android/shared/i;->a:[I

    invoke-virtual {p1}, Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    move-object v3, p1

    .line 792
    :goto_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 793
    const-string v4, "event"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 794
    const-string v4, "hwid"

    iget-object v5, p0, Lcom/bd/android/shared/LicenseProdActivator;->l:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/bd/android/shared/BDUtils;->getDeviceIDMD5(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 795
    const-string v4, "oslang"

    invoke-static {}, Lcom/bd/android/shared/BDUtils;->getLocaleDevice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 796
    const-string v4, "product_id"

    iget v5, p0, Lcom/bd/android/shared/LicenseProdActivator;->k:I

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 797
    const-string v4, "name"

    invoke-static {}, Lcom/bd/android/shared/BDUtils;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 798
    const-string v4, "os"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Android OS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 799
    const-string v4, "prodver"

    iget-object v5, p0, Lcom/bd/android/shared/LicenseProdActivator;->f:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 801
    iget-object v4, p0, Lcom/bd/android/shared/LicenseProdActivator;->c:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/bd/android/shared/LicenseProdActivator;->d:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/bd/android/shared/LicenseProdActivator;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/bd/android/shared/LicenseProdActivator;->d:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 803
    const-string v4, "login"

    iget-object v5, p0, Lcom/bd/android/shared/LicenseProdActivator;->c:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 804
    const-string v4, "token"

    iget-object v5, p0, Lcom/bd/android/shared/LicenseProdActivator;->d:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 808
    :cond_0
    iget-object v4, p0, Lcom/bd/android/shared/LicenseProdActivator;->h:[I

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/bd/android/shared/LicenseProdActivator;->h:[I

    array-length v4, v4

    if-lez v4, :cond_1

    .line 810
    const-string v4, "partner_id"

    iget-object v5, p0, Lcom/bd/android/shared/LicenseProdActivator;->h:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 813
    :cond_1
    if-eqz v2, :cond_2

    .line 815
    const-string v4, "ref"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 818
    :cond_2
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 820
    sget-object v4, Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;->LINK:Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;

    if-eq v4, p1, :cond_3

    sget-object v4, Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;->UNLINK:Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;

    if-ne v4, v3, :cond_5

    .line 822
    :cond_3
    iget v4, p0, Lcom/bd/android/shared/LicenseProdActivator;->j:I

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 829
    :goto_1
    const-string v4, "used_modules"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 831
    iget-object v2, p0, Lcom/bd/android/shared/LicenseProdActivator;->n:Lcom/bd/android/shared/u;

    invoke-virtual {p0}, Lcom/bd/android/shared/LicenseProdActivator;->isLinked()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/bd/android/shared/u;->a(Z)Lcom/bd/android/shared/s;

    move-result-object v4

    .line 833
    iget-boolean v2, p0, Lcom/bd/android/shared/LicenseProdActivator;->g:Z

    if-eqz v2, :cond_6

    .line 835
    const-string v2, "fetch_new"

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 848
    :goto_2
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 849
    sget-object v5, Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;->NEW_SERIAL:Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;

    if-ne v5, v3, :cond_9

    .line 851
    array-length v3, p2

    :goto_3
    if-ge v1, v3, :cond_a

    aget-object v4, p2, v1

    .line 853
    if-eqz v4, :cond_4

    .line 855
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 780
    :pswitch_0
    sget-object v0, Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;->CHECK:Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;

    move-object v3, v0

    .line 781
    goto/16 :goto_0

    .line 783
    :pswitch_1
    sget-object v0, Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;->UNLINK:Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;

    move-object v3, v0

    .line 784
    goto/16 :goto_0

    .line 786
    :pswitch_2
    sget-object v0, Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;->NEW_SERIAL:Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;

    move-object v3, v0

    goto/16 :goto_0

    .line 826
    :cond_5
    :try_start_1
    iget v4, p0, Lcom/bd/android/shared/LicenseProdActivator;->i:I

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_1

    .line 866
    :catch_0
    move-exception v0

    .line 868
    const/4 v0, 0x0

    .line 871
    :goto_4
    return-object v0

    .line 839
    :cond_6
    const/4 v2, 0x1

    .line 840
    sget-object v5, Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;->CHECK:Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;

    if-ne v3, v5, :cond_8

    invoke-virtual {p0}, Lcom/bd/android/shared/LicenseProdActivator;->GetTimeLeft()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gtz v5, :cond_7

    if-eqz p3, :cond_8

    :cond_7
    sget-object v5, Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;->LINK:Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;

    if-eq p1, v5, :cond_8

    iget-object v5, v4, Lcom/bd/android/shared/s;->c:Ljava/lang/String;

    const-string v6, "trial"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    move v2, v1

    .line 845
    :cond_8
    const-string v5, "fetch_new"

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    .line 859
    :cond_9
    sget-object v1, Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;->LINK:Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;

    if-eq p1, v1, :cond_a

    .line 861
    iget-object v1, v4, Lcom/bd/android/shared/s;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 864
    :cond_a
    const-string v1, "serials"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 777
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 746
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->m:Ljava/util/Vector;

    if-nez v0, :cond_1

    .line 759
    :cond_0
    return-void

    .line 751
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->m:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->m:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bd/android/shared/LicenseProdActivator$IOnProductLicenseChanged;

    .line 754
    if-eqz v0, :cond_2

    .line 756
    invoke-interface {v0, p1}, Lcom/bd/android/shared/LicenseProdActivator$IOnProductLicenseChanged;->onProductLicenseChanged(I)V

    .line 751
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/bd/android/shared/LicenseProdActivator;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/bd/android/shared/LicenseProdActivator;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/bd/android/shared/LicenseProdActivator;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/bd/android/shared/LicenseProdActivator;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 876
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->l:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 878
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 879
    const-string v1, "username"

    iget-object v2, p0, Lcom/bd/android/shared/LicenseProdActivator;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 880
    const-string v1, "pending"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 881
    iget-object v1, p0, Lcom/bd/android/shared/LicenseProdActivator;->l:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 883
    :cond_0
    return-void
.end method

.method private a([Ljava/lang/String;Lcom/bd/android/shared/LicenseProdActivator$IOnProductLicenseChanged;Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 311
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/bd/android/shared/BDUtils;->isInternetOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 313
    if-eqz p2, :cond_0

    .line 315
    const/16 v0, -0x6d

    invoke-interface {p2, v0}, Lcom/bd/android/shared/LicenseProdActivator$IOnProductLicenseChanged;->onProductLicenseChanged(I)V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    if-nez p4, :cond_2

    invoke-direct {p0}, Lcom/bd/android/shared/LicenseProdActivator;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    :cond_2
    iget-boolean v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->g:Z

    if-nez v0, :cond_4

    .line 327
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 329
    :cond_3
    invoke-virtual {p0}, Lcom/bd/android/shared/LicenseProdActivator;->clearLicenseData()V

    goto :goto_0

    .line 334
    :cond_4
    if-eqz p1, :cond_5

    .line 336
    new-instance v0, Lcom/bd/android/shared/k;

    invoke-direct {v0, p0, p1, p2}, Lcom/bd/android/shared/k;-><init>(Lcom/bd/android/shared/LicenseProdActivator;[Ljava/lang/String;Lcom/bd/android/shared/LicenseProdActivator$IOnProductLicenseChanged;)V

    new-array v1, v3, [Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/bd/android/shared/k;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 338
    :cond_5
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->b:[Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 340
    new-instance v0, Lcom/bd/android/shared/k;

    iget-object v1, p0, Lcom/bd/android/shared/LicenseProdActivator;->b:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, p2}, Lcom/bd/android/shared/k;-><init>(Lcom/bd/android/shared/LicenseProdActivator;[Ljava/lang/String;Lcom/bd/android/shared/LicenseProdActivator$IOnProductLicenseChanged;)V

    new-array v1, v3, [Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/bd/android/shared/k;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 344
    :cond_6
    iput-boolean v2, p0, Lcom/bd/android/shared/LicenseProdActivator;->o:Z

    goto :goto_0
.end method

.method private a()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 351
    iget-object v1, p0, Lcom/bd/android/shared/LicenseProdActivator;->n:Lcom/bd/android/shared/u;

    if-nez v1, :cond_1

    .line 361
    :cond_0
    :goto_0
    return v0

    .line 355
    :cond_1
    iget-object v1, p0, Lcom/bd/android/shared/LicenseProdActivator;->n:Lcom/bd/android/shared/u;

    invoke-virtual {p0}, Lcom/bd/android/shared/LicenseProdActivator;->isLinked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bd/android/shared/u;->a(Z)Lcom/bd/android/shared/s;

    move-result-object v1

    .line 356
    invoke-virtual {v1}, Lcom/bd/android/shared/s;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, v1, Lcom/bd/android/shared/s;->h:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/bd/android/shared/s;->h:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 358
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I[I)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 887
    move v0, v1

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 889
    aget v2, p2, v0

    if-ne v2, p1, :cond_1

    .line 891
    const/4 v1, 0x1

    .line 894
    :cond_0
    return v1

    .line 887
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/bd/android/shared/LicenseProdActivator;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/bd/android/shared/LicenseProdActivator;->o:Z

    return p1
.end method

.method static synthetic a(Lcom/bd/android/shared/LicenseProdActivator;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/bd/android/shared/LicenseProdActivator;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 899
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 913
    :cond_0
    :goto_0
    return v0

    .line 903
    :cond_1
    array-length v2, p1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 905
    if-eqz v3, :cond_2

    .line 907
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 909
    const/4 v0, 0x1

    goto :goto_0

    .line 903
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private a([I[I)[I
    .locals 4

    .prologue
    .line 137
    array-length v1, p2

    .line 138
    new-array v2, v1, [I

    .line 139
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 141
    aget v3, p2, v0

    aput v3, v2, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    return-object v2
.end method

.method private static a([Ljava/lang/String;Ljava/lang/Object;)[Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 149
    .line 151
    if-nez p1, :cond_0

    move-object v0, v1

    .line 209
    :goto_0
    return-object v0

    .line 156
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    move v4, v5

    .line 167
    :goto_1
    if-nez v4, :cond_2

    move-object v0, v1

    .line 169
    goto :goto_0

    .line 162
    :cond_1
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_b

    move-object v0, p1

    .line 164
    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    array-length v0, v0

    move v4, v0

    goto :goto_1

    .line 171
    :cond_2
    new-array v2, v4, [Ljava/lang/String;

    .line 173
    if-ne v4, v5, :cond_7

    .line 175
    check-cast p1, Ljava/lang/String;

    .line 176
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move-object v0, v1

    .line 178
    goto :goto_0

    .line 180
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v7, :cond_6

    .line 182
    sget-object v0, Lcom/bd/android/shared/BDHashing$ALGORITHMS;->MD5:Lcom/bd/android/shared/BDHashing$ALGORITHMS;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/bd/android/shared/BDHashing;->make_hash(Lcom/bd/android/shared/BDHashing$ALGORITHMS;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    :cond_5
    :goto_2
    move-object v0, v2

    .line 209
    goto :goto_0

    .line 186
    :cond_6
    aput-object p1, v2, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 191
    :goto_3
    if-ge v1, v4, :cond_5

    move-object v0, p1

    .line 193
    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v1

    .line 194
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_9

    .line 191
    :cond_8
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 199
    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v7, :cond_a

    .line 201
    sget-object v3, Lcom/bd/android/shared/BDHashing$ALGORITHMS;->MD5:Lcom/bd/android/shared/BDHashing$ALGORITHMS;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v5}, Lcom/bd/android/shared/BDHashing;->make_hash(Lcom/bd/android/shared/BDHashing$ALGORITHMS;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    goto :goto_4

    .line 205
    :cond_a
    aput-object v0, v2, v1

    goto :goto_4

    :cond_b
    move v4, v3

    goto :goto_1
.end method

.method private b()I
    .locals 3

    .prologue
    .line 1060
    new-instance v0, Lcom/bd/android/shared/s;

    invoke-direct {v0}, Lcom/bd/android/shared/s;-><init>()V

    .line 1061
    iget-object v1, p0, Lcom/bd/android/shared/LicenseProdActivator;->n:Lcom/bd/android/shared/u;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/bd/android/shared/u;->a(Lcom/bd/android/shared/s;Z)V

    .line 1062
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bd/android/shared/LicenseProdActivator;->a(Z)V

    .line 1063
    const/16 v0, 0xcb

    return v0
.end method

.method private b([Ljava/lang/String;Lcom/bd/android/shared/LicenseResponseParser;)I
    .locals 5

    .prologue
    const/16 v1, 0xc9

    const/16 v2, 0xc8

    const/4 v4, 0x1

    const/16 v0, -0xcd

    .line 1068
    invoke-virtual {p2}, Lcom/bd/android/shared/LicenseResponseParser;->hasTSMD()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1095
    :cond_0
    :goto_0
    return v0

    .line 1071
    :cond_1
    invoke-virtual {p2}, Lcom/bd/android/shared/LicenseResponseParser;->getTSMDSerial()Ljava/lang/String;

    move-result-object v3

    .line 1073
    if-eqz v3, :cond_0

    .line 1076
    invoke-virtual {p2, v3}, Lcom/bd/android/shared/LicenseResponseParser;->getLicenseData(Ljava/lang/String;)Lcom/bd/android/shared/s;

    move-result-object v3

    .line 1078
    if-eqz v3, :cond_0

    .line 1081
    iget v0, v3, Lcom/bd/android/shared/s;->n:I

    if-eq v2, v0, :cond_2

    .line 1083
    iget v0, v3, Lcom/bd/android/shared/s;->n:I

    goto :goto_0

    .line 1086
    :cond_2
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->n:Lcom/bd/android/shared/u;

    invoke-virtual {v0, v3, v4}, Lcom/bd/android/shared/u;->a(Lcom/bd/android/shared/s;Z)V

    .line 1088
    invoke-direct {p0, v3, p1}, Lcom/bd/android/shared/LicenseProdActivator;->a(Lcom/bd/android/shared/s;[Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_3

    move v0, v1

    .line 1090
    goto :goto_0

    .line 1093
    :cond_3
    invoke-virtual {p0, v4}, Lcom/bd/android/shared/LicenseProdActivator;->a(Z)V

    move v0, v2

    .line 1095
    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 763
    new-instance v0, Lcom/bd/android/shared/s;

    invoke-direct {v0}, Lcom/bd/android/shared/s;-><init>()V

    .line 765
    iget-object v1, p0, Lcom/bd/android/shared/LicenseProdActivator;->n:Lcom/bd/android/shared/u;

    invoke-virtual {v1, v0, v2}, Lcom/bd/android/shared/u;->a(Lcom/bd/android/shared/s;Z)V

    .line 766
    iput-object p1, v0, Lcom/bd/android/shared/s;->a:Ljava/lang/String;

    .line 768
    iget-object v1, p0, Lcom/bd/android/shared/LicenseProdActivator;->n:Lcom/bd/android/shared/u;

    invoke-virtual {v1, v0, v2}, Lcom/bd/android/shared/u;->a(Lcom/bd/android/shared/s;Z)V

    .line 769
    return-void
.end method

.method static synthetic b(Lcom/bd/android/shared/LicenseProdActivator;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->p:Z

    return v0
.end method

.method static synthetic b(Lcom/bd/android/shared/LicenseProdActivator;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/bd/android/shared/LicenseProdActivator;->p:Z

    return p1
.end method

.method private c([Ljava/lang/String;Lcom/bd/android/shared/LicenseResponseParser;)I
    .locals 3

    .prologue
    const/16 v2, 0xc8

    const/16 v0, -0xca

    .line 1100
    invoke-virtual {p0}, Lcom/bd/android/shared/LicenseProdActivator;->isLinked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1102
    invoke-virtual {p2}, Lcom/bd/android/shared/LicenseResponseParser;->hasTSMD()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1156
    :cond_0
    :goto_0
    return v0

    .line 1105
    :cond_1
    invoke-virtual {p2}, Lcom/bd/android/shared/LicenseResponseParser;->getTSMDSerial()Ljava/lang/String;

    move-result-object v1

    .line 1107
    if-eqz v1, :cond_0

    .line 1112
    invoke-virtual {p2, v1}, Lcom/bd/android/shared/LicenseResponseParser;->getLicenseData(Ljava/lang/String;)Lcom/bd/android/shared/s;

    move-result-object v1

    .line 1114
    if-eqz v1, :cond_0

    .line 1119
    iget v0, v1, Lcom/bd/android/shared/s;->n:I

    if-eq v2, v0, :cond_2

    .line 1121
    iget v0, v1, Lcom/bd/android/shared/s;->n:I

    goto :goto_0

    .line 1124
    :cond_2
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->n:Lcom/bd/android/shared/u;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bd/android/shared/u;->a(Lcom/bd/android/shared/s;Z)V

    .line 1126
    invoke-direct {p0, v1, p1}, Lcom/bd/android/shared/LicenseProdActivator;->a(Lcom/bd/android/shared/s;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1130
    :cond_3
    invoke-virtual {p2}, Lcom/bd/android/shared/LicenseResponseParser;->hasTSMD()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/bd/android/shared/LicenseResponseParser;->hasBMS()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1132
    const/16 v0, 0xcd

    goto :goto_0

    .line 1135
    :cond_4
    invoke-virtual {p2}, Lcom/bd/android/shared/LicenseResponseParser;->getBMSSerial()Ljava/lang/String;

    move-result-object v1

    .line 1137
    if-eqz v1, :cond_0

    .line 1142
    invoke-virtual {p2, v1}, Lcom/bd/android/shared/LicenseResponseParser;->getLicenseData(Ljava/lang/String;)Lcom/bd/android/shared/s;

    move-result-object v1

    .line 1144
    if-eqz v1, :cond_0

    .line 1149
    iget v0, v1, Lcom/bd/android/shared/s;->n:I

    if-eq v2, v0, :cond_5

    .line 1151
    iget v0, v1, Lcom/bd/android/shared/s;->n:I

    goto :goto_0

    .line 1154
    :cond_5
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->n:Lcom/bd/android/shared/u;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bd/android/shared/u;->a(Lcom/bd/android/shared/s;Z)V

    .line 1156
    invoke-direct {p0, v1, p1}, Lcom/bd/android/shared/LicenseProdActivator;->a(Lcom/bd/android/shared/s;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/bd/android/shared/LicenseProdActivator;)Lcom/bd/android/shared/u;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->n:Lcom/bd/android/shared/u;

    return-object v0
.end method

.method static synthetic c(Lcom/bd/android/shared/LicenseProdActivator;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/bd/android/shared/LicenseProdActivator;->r:Z

    return p1
.end method

.method private d([Ljava/lang/String;Lcom/bd/android/shared/LicenseResponseParser;)I
    .locals 4

    .prologue
    const/16 v0, -0xca

    const/4 v3, 0x0

    .line 1162
    aget-object v1, p1, v3

    invoke-virtual {p2, v1}, Lcom/bd/android/shared/LicenseResponseParser;->getLicenseData(Ljava/lang/String;)Lcom/bd/android/shared/s;

    move-result-object v1

    .line 1164
    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/bd/android/shared/s;->d:Ljava/lang/String;

    const-string v2, "valid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1166
    const/16 v0, 0xc9

    .line 1200
    :cond_0
    :goto_0
    return v0

    .line 1169
    :cond_1
    invoke-virtual {p2}, Lcom/bd/android/shared/LicenseResponseParser;->hasTSMD()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1171
    invoke-virtual {p2}, Lcom/bd/android/shared/LicenseResponseParser;->getTSMDSerial()Ljava/lang/String;

    move-result-object v1

    .line 1173
    if-eqz v1, :cond_2

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1175
    const/16 v0, -0xce

    goto :goto_0

    .line 1179
    :cond_2
    invoke-virtual {p2}, Lcom/bd/android/shared/LicenseResponseParser;->getBMSSerial()Ljava/lang/String;

    move-result-object v1

    .line 1181
    if-eqz v1, :cond_0

    .line 1186
    invoke-virtual {p2, v1}, Lcom/bd/android/shared/LicenseResponseParser;->getLicenseData(Ljava/lang/String;)Lcom/bd/android/shared/s;

    move-result-object v1

    .line 1188
    if-eqz v1, :cond_0

    .line 1193
    const/16 v0, 0xc8

    iget v2, v1, Lcom/bd/android/shared/s;->n:I

    if-eq v0, v2, :cond_3

    .line 1195
    iget v0, v1, Lcom/bd/android/shared/s;->n:I

    goto :goto_0

    .line 1198
    :cond_3
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->n:Lcom/bd/android/shared/u;

    invoke-virtual {v0, v1, v3}, Lcom/bd/android/shared/u;->a(Lcom/bd/android/shared/s;Z)V

    .line 1200
    invoke-direct {p0, v1, p1}, Lcom/bd/android/shared/LicenseProdActivator;->a(Lcom/bd/android/shared/s;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/bd/android/shared/LicenseProdActivator;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/bd/android/shared/LicenseProdActivator;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/bd/android/shared/LicenseProdActivator;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->l:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/bd/android/shared/LicenseProdActivator;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/bd/android/shared/LicenseProdActivator;
    .locals 2

    .prologue
    .line 132
    const-class v0, Lcom/bd/android/shared/LicenseProdActivator;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bd/android/shared/LicenseProdActivator;->a:Lcom/bd/android/shared/LicenseProdActivator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic h(Lcom/bd/android/shared/LicenseProdActivator;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->s:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic i(Lcom/bd/android/shared/LicenseProdActivator;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->r:Z

    return v0
.end method

.method public static declared-synchronized initLicense(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II[ILjava/lang/String;Lcom/bd/android/shared/LicenseProdActivator$IOnProductLicenseChanged;ZLcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;Z)Lcom/bd/android/shared/LicenseProdActivator;
    .locals 16

    .prologue
    .line 97
    const-class v15, Lcom/bd/android/shared/LicenseProdActivator;

    monitor-enter v15

    :try_start_0
    sget-object v2, Lcom/bd/android/shared/LicenseProdActivator;->a:Lcom/bd/android/shared/LicenseProdActivator;

    if-nez v2, :cond_0

    .line 100
    new-instance v2, Lcom/bd/android/shared/LicenseProdActivator;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    invoke-direct/range {v2 .. v14}, Lcom/bd/android/shared/LicenseProdActivator;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II[ILjava/lang/String;Lcom/bd/android/shared/LicenseProdActivator$IOnProductLicenseChanged;ZLcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;Z)V

    sput-object v2, Lcom/bd/android/shared/LicenseProdActivator;->a:Lcom/bd/android/shared/LicenseProdActivator;

    .line 127
    :goto_0
    sget-object v2, Lcom/bd/android/shared/LicenseProdActivator;->a:Lcom/bd/android/shared/LicenseProdActivator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v15

    return-object v2

    .line 105
    :cond_0
    if-eqz p2, :cond_1

    :try_start_1
    sget-object v2, Lcom/bd/android/shared/LicenseProdActivator;->a:Lcom/bd/android/shared/LicenseProdActivator;

    iget-object v2, v2, Lcom/bd/android/shared/LicenseProdActivator;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/bd/android/shared/LicenseProdActivator;->a:Lcom/bd/android/shared/LicenseProdActivator;

    iget-object v2, v2, Lcom/bd/android/shared/LicenseProdActivator;->c:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 107
    sget-object v2, Lcom/bd/android/shared/LicenseProdActivator;->a:Lcom/bd/android/shared/LicenseProdActivator;

    invoke-virtual {v2}, Lcom/bd/android/shared/LicenseProdActivator;->clearLicenseData()V

    .line 112
    :cond_1
    sget-object v2, Lcom/bd/android/shared/LicenseProdActivator;->a:Lcom/bd/android/shared/LicenseProdActivator;

    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/bd/android/shared/LicenseProdActivator;->c:Ljava/lang/String;

    .line 113
    sget-object v2, Lcom/bd/android/shared/LicenseProdActivator;->a:Lcom/bd/android/shared/LicenseProdActivator;

    move-object/from16 v0, p3

    iput-object v0, v2, Lcom/bd/android/shared/LicenseProdActivator;->d:Ljava/lang/String;

    .line 114
    sget-object v2, Lcom/bd/android/shared/LicenseProdActivator;->a:Lcom/bd/android/shared/LicenseProdActivator;

    sget-object v3, Lcom/bd/android/shared/LicenseProdActivator;->a:Lcom/bd/android/shared/LicenseProdActivator;

    iget-object v3, v3, Lcom/bd/android/shared/LicenseProdActivator;->b:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/bd/android/shared/LicenseProdActivator;->a([Ljava/lang/String;Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/bd/android/shared/LicenseProdActivator;->b:[Ljava/lang/String;

    .line 115
    if-eqz p11, :cond_2

    .line 117
    sget-object v2, Lcom/bd/android/shared/LicenseProdActivator;->a:Lcom/bd/android/shared/LicenseProdActivator;

    sget-object v3, Lcom/bd/android/shared/LicenseProdActivator;->a:Lcom/bd/android/shared/LicenseProdActivator;

    iget-object v3, v3, Lcom/bd/android/shared/LicenseProdActivator;->b:[Ljava/lang/String;

    const/4 v4, 0x1

    move-object/from16 v0, p8

    move-object/from16 v1, p10

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/bd/android/shared/LicenseProdActivator;->a([Ljava/lang/String;Lcom/bd/android/shared/LicenseProdActivator$IOnProductLicenseChanged;Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v2

    monitor-exit v15

    throw v2

    .line 121
    :cond_2
    :try_start_2
    sget-object v2, Lcom/bd/android/shared/LicenseProdActivator;->a:Lcom/bd/android/shared/LicenseProdActivator;

    move-object/from16 v0, p8

    move-object/from16 v1, p10

    invoke-virtual {v2, v0, v1}, Lcom/bd/android/shared/LicenseProdActivator;->RefreshLicense(Lcom/bd/android/shared/LicenseProdActivator$IOnProductLicenseChanged;Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized CanStart()I
    .locals 4

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->n:Lcom/bd/android/shared/u;

    invoke-virtual {p0}, Lcom/bd/android/shared/LicenseProdActivator;->isLinked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bd/android/shared/u;->a(Z)Lcom/bd/android/shared/s;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Lcom/bd/android/shared/s;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {p0}, Lcom/bd/android/shared/LicenseProdActivator;->GetTimeLeft()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 282
    const/16 v0, 0xc8

    .line 305
    :goto_0
    monitor-exit p0

    return v0

    .line 286
    :cond_0
    const/16 v0, 0xca

    goto :goto_0

    .line 292
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->o:Z

    if-nez v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->b:[Ljava/lang/String;

    new-instance v1, Lcom/bd/android/shared/t;

    invoke-direct {v1, p0}, Lcom/bd/android/shared/t;-><init>(Lcom/bd/android/shared/LicenseProdActivator;)V

    sget-object v2, Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;->NEW_SERIAL:Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bd/android/shared/LicenseProdActivator;->a([Ljava/lang/String;Lcom/bd/android/shared/LicenseProdActivator$IOnProductLicenseChanged;Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;Z)V

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->o:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    :cond_2
    const/16 v0, -0xcb

    goto :goto_0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public GetDaysLeft()I
    .locals 6

    .prologue
    const/high16 v0, -0x80000000

    .line 366
    sget-object v1, Lcom/bd/android/shared/LicenseProdActivator;->a:Lcom/bd/android/shared/LicenseProdActivator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bd/android/shared/LicenseProdActivator;->l:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 390
    :cond_0
    :goto_0
    return v0

    .line 372
    :cond_1
    iget-object v1, p0, Lcom/bd/android/shared/LicenseProdActivator;->n:Lcom/bd/android/shared/u;

    invoke-virtual {p0}, Lcom/bd/android/shared/LicenseProdActivator;->isLinked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bd/android/shared/u;->a(Z)Lcom/bd/android/shared/s;

    move-result-object v1

    .line 374
    invoke-virtual {v1}, Lcom/bd/android/shared/s;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/bd/android/shared/s;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/bd/android/shared/s;->d:Ljava/lang/String;

    const-string v3, "invalid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 378
    iget-wide v2, v1, Lcom/bd/android/shared/s;->g:J

    long-to-float v0, v2

    const v2, 0x4ca4cb80    # 8.64E7f

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 385
    if-nez v0, :cond_0

    iget-wide v2, v1, Lcom/bd/android/shared/s;->g:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 387
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public GetLicenseIntervalDays()I
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->n:Lcom/bd/android/shared/u;

    invoke-virtual {p0}, Lcom/bd/android/shared/LicenseProdActivator;->isLinked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bd/android/shared/u;->a(Z)Lcom/bd/android/shared/s;

    move-result-object v0

    .line 419
    iget v0, v0, Lcom/bd/android/shared/s;->j:I

    return v0
.end method

.method public GetLicenseType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->n:Lcom/bd/android/shared/u;

    invoke-virtual {p0}, Lcom/bd/android/shared/LicenseProdActivator;->isLinked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bd/android/shared/u;->a(Z)Lcom/bd/android/shared/s;

    move-result-object v0

    .line 413
    iget-object v0, v0, Lcom/bd/android/shared/s;->c:Ljava/lang/String;

    return-object v0
.end method

.method public GetTimeLeft()J
    .locals 5

    .prologue
    const-wide/high16 v0, -0x8000000000000000L

    .line 395
    sget-object v2, Lcom/bd/android/shared/LicenseProdActivator;->a:Lcom/bd/android/shared/LicenseProdActivator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bd/android/shared/LicenseProdActivator;->l:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-wide v0

    .line 401
    :cond_1
    iget-object v2, p0, Lcom/bd/android/shared/LicenseProdActivator;->n:Lcom/bd/android/shared/u;

    invoke-virtual {p0}, Lcom/bd/android/shared/LicenseProdActivator;->isLinked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bd/android/shared/u;->a(Z)Lcom/bd/android/shared/s;

    move-result-object v2

    .line 403
    invoke-virtual {v2}, Lcom/bd/android/shared/s;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/bd/android/shared/s;->d:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/bd/android/shared/s;->d:Ljava/lang/String;

    const-string v4, "invalid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 405
    iget-wide v0, v2, Lcom/bd/android/shared/s;->g:J

    goto :goto_0
.end method

.method public RefreshLicense(Lcom/bd/android/shared/LicenseProdActivator$IOnProductLicenseChanged;Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;)V
    .locals 3

    .prologue
    const/16 v2, 0xc9

    .line 439
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->n:Lcom/bd/android/shared/u;

    invoke-virtual {p0}, Lcom/bd/android/shared/LicenseProdActivator;->isLinked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bd/android/shared/u;->a(Z)Lcom/bd/android/shared/s;

    move-result-object v0

    .line 440
    invoke-virtual {v0}, Lcom/bd/android/shared/s;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 442
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->b:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 445
    invoke-direct {p0}, Lcom/bd/android/shared/LicenseProdActivator;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->b:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/bd/android/shared/LicenseProdActivator;->a([Ljava/lang/String;Lcom/bd/android/shared/LicenseProdActivator$IOnProductLicenseChanged;Lcom/bd/android/shared/LicenseProdActivator$EVENT_TYPE;Z)V

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    if-eqz p1, :cond_0

    .line 453
    const/16 v0, 0xc8

    invoke-interface {p1, v0}, Lcom/bd/android/shared/LicenseProdActivator$IOnProductLicenseChanged;->onProductLicenseChanged(I)V

    goto :goto_0

    .line 459
    :cond_2
    if-eqz p1, :cond_0

    .line 461
    invoke-interface {p1, v2}, Lcom/bd/android/shared/LicenseProdActivator$IOnProductLicenseChanged;->onProductLicenseChanged(I)V

    goto :goto_0

    .line 467
    :cond_3
    if-eqz p1, :cond_0

    .line 469
    invoke-interface {p1, v2}, Lcom/bd/android/shared/LicenseProdActivator$IOnProductLicenseChanged;->onProductLicenseChanged(I)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1205
    iget-object v1, p0, Lcom/bd/android/shared/LicenseProdActivator;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 1207
    :try_start_0
    iget-boolean v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->r:Z

    if-nez v0, :cond_0

    .line 1209
    new-instance v0, Lcom/bd/android/shared/j;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/bd/android/shared/j;-><init>(Lcom/bd/android/shared/LicenseProdActivator;Lcom/bd/android/shared/t;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Lcom/bd/android/shared/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->r:Z

    .line 1212
    :cond_0
    monitor-exit v1

    .line 1213
    return-void

    .line 1212
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Z)V
    .locals 1

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->n:Lcom/bd/android/shared/u;

    invoke-virtual {v0, p1}, Lcom/bd/android/shared/u;->g(Z)V

    .line 1234
    return-void
.end method

.method public clearLicenseData()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 476
    iget-boolean v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->g:Z

    if-nez v0, :cond_0

    .line 478
    iput-object v1, p0, Lcom/bd/android/shared/LicenseProdActivator;->c:Ljava/lang/String;

    .line 479
    iput-object v1, p0, Lcom/bd/android/shared/LicenseProdActivator;->d:Ljava/lang/String;

    .line 480
    new-instance v0, Lcom/bd/android/shared/s;

    invoke-direct {v0}, Lcom/bd/android/shared/s;-><init>()V

    .line 481
    iget-object v1, p0, Lcom/bd/android/shared/LicenseProdActivator;->n:Lcom/bd/android/shared/u;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/bd/android/shared/u;->a(Lcom/bd/android/shared/s;Z)V

    .line 482
    iget-object v1, p0, Lcom/bd/android/shared/LicenseProdActivator;->n:Lcom/bd/android/shared/u;

    invoke-virtual {v1, v0, v3}, Lcom/bd/android/shared/u;->a(Lcom/bd/android/shared/s;Z)V

    .line 484
    invoke-virtual {p0, v3}, Lcom/bd/android/shared/LicenseProdActivator;->a(Z)V

    .line 486
    :cond_0
    return-void
.end method

.method public getPartnerID()I
    .locals 2

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->n:Lcom/bd/android/shared/u;

    invoke-virtual {p0}, Lcom/bd/android/shared/LicenseProdActivator;->isLinked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bd/android/shared/u;->a(Z)Lcom/bd/android/shared/s;

    move-result-object v0

    .line 1218
    iget v0, v0, Lcom/bd/android/shared/s;->i:I

    return v0
.end method

.method public isLinked()Z
    .locals 1

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->n:Lcom/bd/android/shared/u;

    invoke-virtual {v0}, Lcom/bd/android/shared/u;->m()Z

    move-result v0

    return v0
.end method

.method public registerOnLicenseStatusChanged(Lcom/bd/android/shared/LicenseProdActivator$IOnProductLicenseChanged;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->m:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public setTSMDModule(I)V
    .locals 0

    .prologue
    .line 1223
    iput p1, p0, Lcom/bd/android/shared/LicenseProdActivator;->j:I

    .line 1224
    return-void
.end method

.method public unregisterOnLicenseStatusChanged(Lcom/bd/android/shared/LicenseProdActivator$IOnProductLicenseChanged;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/bd/android/shared/LicenseProdActivator;->m:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method
