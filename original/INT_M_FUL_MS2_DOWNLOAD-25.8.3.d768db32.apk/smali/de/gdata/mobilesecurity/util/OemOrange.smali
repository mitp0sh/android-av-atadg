.class public Lde/gdata/mobilesecurity/util/OemOrange;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LICENSE_STATE_EXPIRED:I = 0x3

.field public static final LICENSE_STATE_INVALID:I = 0x2

.field public static final LICENSE_STATE_UNDEFINED:I = -0x1

.field public static final LICENSE_STATE_UNKNOWN:I = 0x0

.field public static final LICENSE_STATE_VALID:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetBuyUrl(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 6

    .prologue
    .line 70
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedPassword()Ljava/lang/String;

    move-result-object v2

    .line 73
    if-eqz p1, :cond_0

    const-string v0, "e"

    .line 75
    :goto_0
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->getNormalizedPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "t="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "|n="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|l="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    :try_start_0
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/OemOrange;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 81
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 86
    const-string v1, "+"

    const-string v2, "%2B"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v1, "/"

    const-string v2, "%2F"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 88
    const-string v1, "="

    const-string v2, "%3D"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://drei.gdatasoftware.com/?eID=gdpayorange&l="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 73
    :cond_0
    const-string v0, "n"

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    const-string v0, ""

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 4

    .prologue
    .line 95
    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 98
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "DESede"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 99
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v2, 0x8

    new-array v2, v2, [B

    invoke-direct {v0, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 100
    const-string v2, "DESede/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 101
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 103
    const-string v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 104
    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 106
    return-object v0

    .line 95
    :array_0
    .array-data 1
        -0x76t
        0x6et
        0x64t
        -0x38t
        0x45t
        0x62t
        -0x71t
        -0x76t
        0x6dt
        -0x6et
        0x8t
        -0x14t
        -0x24t
        -0x7at
        0x2t
        0x4t
        0x16t
        0x2at
        -0x2dt
        -0x69t
        0x70t
        -0x3et
        0x8t
        0x40t
    .end array-data
.end method

.method public static getTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 183
    const-string v0, "\\s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 184
    array-length v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 185
    :cond_0
    return-object p1
.end method

.method public static isOrangeSimCard(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 171
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 173
    const-string v1, ""

    .line 174
    if-eqz v0, :cond_2

    .line 175
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 178
    :goto_0
    const-string v1, "23205"

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqualIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "23210"

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqualIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public Startup(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;Z)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 42
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v3, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v3, p1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isOrangeOemVersion()Z

    move-result v4

    if-nez v4, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 49
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getOrangeLicenseState()I

    move-result v4

    .line 51
    if-nez v4, :cond_4

    move v0, v1

    .line 52
    :goto_1
    if-eqz p3, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v7, :cond_3

    :cond_2
    move v0, v1

    .line 55
    :cond_3
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedPassword()Ljava/lang/String;

    move-result-object v3

    .line 58
    new-instance v4, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;

    invoke-direct {v4, p1, p2}, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;-><init>(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;)V

    new-array v5, v7, [Ljava/lang/String;

    aput-object v0, v5, v2

    aput-object v3, v5, v1

    const-string v0, "1"

    aput-object v0, v5, v6

    invoke-virtual {v4, v5}, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_4
    move v0, v2

    .line 51
    goto :goto_1
.end method

.method public isOrangeSIMCheckDialog(Landroid/support/v7/app/ActionBarActivity;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 145
    invoke-static {p1}, Lde/gdata/mobilesecurity/util/OemOrange;->isOrangeSimCard(Landroid/content/Context;)Z

    move-result v0

    .line 146
    invoke-static {p1}, Lde/gdata/mobilesecurity/util/MyUtil;->isDebugMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 148
    :cond_0
    if-nez v0, :cond_1

    .line 149
    const v2, 0x7f0d0245

    invoke-static {p1, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d03db

    invoke-virtual {p1, v3}, Landroid/support/v7/app/ActionBarActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0d0240

    invoke-virtual {p1, v4}, Landroid/support/v7/app/ActionBarActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lde/gdata/mobilesecurity/util/m;

    invoke-direct {v5, p0, p1}, Lde/gdata/mobilesecurity/util/m;-><init>(Lde/gdata/mobilesecurity/util/OemOrange;Landroid/support/v7/app/ActionBarActivity;)V

    invoke-static {p1, v2, v3, v4, v5}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v2

    .line 158
    new-instance v3, Lde/gdata/mobilesecurity/util/n;

    invoke-direct {v3, p0, p1}, Lde/gdata/mobilesecurity/util/n;-><init>(Lde/gdata/mobilesecurity/util/OemOrange;Landroid/support/v7/app/ActionBarActivity;)V

    invoke-static {v3}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->setmOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 164
    invoke-virtual {v2, v1}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 165
    invoke-virtual {p1}, Landroid/support/v7/app/ActionBarActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v3, "DIALOG_TAG"

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 167
    :cond_1
    return v0
.end method

.method public setLicenseStateFromServerStatus(Landroid/content/Context;I)I
    .locals 6

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v3, -0x1

    const/16 v5, 0x1647

    .line 116
    .line 121
    if-eqz p2, :cond_0

    const/16 v0, 0x1651

    if-eq p2, v0, :cond_0

    if-eq p2, v2, :cond_0

    if-ne p2, v1, :cond_6

    .line 123
    :cond_0
    const/4 v0, 0x1

    .line 126
    :goto_0
    if-eq p2, v5, :cond_1

    const/16 v4, 0x1650

    if-eq p2, v4, :cond_1

    const/16 v4, 0x1653

    if-ne p2, v4, :cond_2

    .line 128
    :cond_1
    if-ne p2, v5, :cond_4

    .line 132
    :goto_1
    if-ne p2, v5, :cond_5

    const v0, 0x1869e

    :goto_2
    move p2, v0

    move v0, v1

    .line 136
    :cond_2
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v1, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 137
    if-eq v0, v3, :cond_3

    .line 138
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getOrangeLicenseState()I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 139
    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setOrangeLicenseState(I)V

    .line 141
    :cond_3
    return p2

    :cond_4
    move v1, v2

    .line 128
    goto :goto_1

    .line 132
    :cond_5
    const v0, 0x1869d

    goto :goto_2

    :cond_6
    move v0, v3

    goto :goto_0
.end method
