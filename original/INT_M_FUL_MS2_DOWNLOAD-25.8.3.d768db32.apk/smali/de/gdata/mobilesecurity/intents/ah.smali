.class Lde/gdata/mobilesecurity/intents/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/vending/licensing/LicenseCheckerCallback;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/intents/Main;


# direct methods
.method private constructor <init>(Lde/gdata/mobilesecurity/intents/Main;)V
    .locals 0

    .prologue
    .line 2790
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/ah;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lde/gdata/mobilesecurity/intents/Main;Lde/gdata/mobilesecurity/intents/k;)V
    .locals 0

    .prologue
    .line 2790
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/intents/ah;-><init>(Lde/gdata/mobilesecurity/intents/Main;)V

    return-void
.end method


# virtual methods
.method public allow(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/16 v8, 0x23

    const/4 v2, 0x0

    .line 2794
    const-string v0, "license checker: allow"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 2796
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/ah;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/Main;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2845
    :cond_0
    :goto_0
    return-void

    .line 2798
    :cond_1
    new-instance v4, Lde/gdata/mobilesecurity/util/BasePreferences;

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/ah;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-direct {v4, v0}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 2800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GIAP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2801
    invoke-virtual {v4, v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->setGoogleAdditionalInfo(Ljava/lang/String;)V

    .line 2803
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/ah;->a:Lde/gdata/mobilesecurity/intents/Main;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/intents/Main;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 2804
    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 2805
    const-string v0, ""

    .line 2807
    array-length v5, v3

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_2

    aget-object v6, v3, v1

    .line 2808
    iget-object v7, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 2809
    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 2814
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/BasePreferences;->getLicensedGoogleAccount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqualIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2816
    const-string v1, "Google licensing succeeded"

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 2818
    invoke-virtual {v4, v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->setLicensedGoogleAccount(Ljava/lang/String;)V

    .line 2820
    const-string v1, ""

    .line 2821
    const-string v1, ""

    .line 2822
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#g"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2823
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v8, :cond_3

    invoke-virtual {v3, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2826
    :cond_3
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 2827
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v6, "@"

    const-string v7, "X"

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 2828
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 2829
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v2

    .line 2830
    :goto_2
    array-length v2, v5

    if-ge v0, v2, :cond_5

    .line 2831
    aget-byte v2, v5, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2830
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2807
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 2832
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    const/16 v5, 0x11

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2834
    :try_start_1
    new-instance v1, Lde/gdata/mobilesecurity/updateserverconnection/TaskDeferredRegister;

    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/ah;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-direct {v1, v2}, Lde/gdata/mobilesecurity/updateserverconnection/TaskDeferredRegister;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#GOOG|KMBKS|RALXI|WNPWL|LG"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lde/gdata/mobilesecurity/intents/ah;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v7}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->getGDataLanguageCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const-string v6, ""

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-string v6, ""

    aput-object v6, v2, v5

    const/4 v5, 0x3

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/BasePreferences;->getLicensedGoogleAccount()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x4

    const-string v6, "false"

    aput-object v6, v2, v5

    const/4 v5, 0x5

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/BasePreferences;->getGoogleAdditionalInfo()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x6

    aput-object v3, v2, v5

    const/4 v5, 0x7

    aput-object v0, v2, v5

    const/16 v5, 0x8

    iget-object v6, p0, Lde/gdata/mobilesecurity/intents/ah;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v6}, Lde/gdata/mobilesecurity/util/MyUtil;->getNormalizedPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/updateserverconnection/TaskDeferredRegister;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2841
    :goto_3
    invoke-virtual {v4, v3, v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->setAndEncryptUsernameAndPassword(Ljava/lang/String;Ljava/lang/String;)V

    .line 2842
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/ah;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/Trial;->registrationPerformed()V

    goto/16 :goto_0

    .line 2839
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public applicationError(I)V
    .locals 2

    .prologue
    .line 2861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Licensing: application error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 2862
    return-void
.end method

.method public dontAllow(I)V
    .locals 3

    .prologue
    .line 2849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "license checker: dontAllow - reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 2851
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/ah;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 2852
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getLicensedGoogleAccount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2853
    const-string v1, "Google licensing failed"

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 2854
    const-string v1, ""

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->setLicensedGoogleAccount(Ljava/lang/String;)V

    .line 2855
    const-string v1, ""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->setAndEncryptUsernameAndPassword(Ljava/lang/String;Ljava/lang/String;)V

    .line 2857
    :cond_0
    return-void
.end method
