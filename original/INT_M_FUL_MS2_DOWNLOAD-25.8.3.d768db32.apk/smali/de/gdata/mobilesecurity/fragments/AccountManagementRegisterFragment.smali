.class public Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;


# static fields
.field public static final URL_GLOBALWISE:Ljava/lang/String; = "http://gshop.g-wise.co.jp/btoc/order/phone.php"


# instance fields
.field a:Landroid/support/v4/app/FragmentActivity;

.field b:Landroid/content/Context;

.field private c:I

.field private d:Z

.field private e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 50
    iput v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->c:I

    .line 52
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->d:Z

    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->c:I

    return v0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;I)I
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->c:I

    return p1
.end method

.method private a()Ljava/lang/String;
    .locals 7

    .prologue
    const v6, 0x7f0d027b

    .line 221
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->a:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x7f0b00b1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringFromField(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v1

    .line 222
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->a:Landroid/support/v4/app/FragmentActivity;

    const v2, 0x7f0b00b2

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringFromField(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v2

    .line 223
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->a:Landroid/support/v4/app/FragmentActivity;

    const v3, 0x7f0b00b3

    invoke-static {v0, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringFromField(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v3

    .line 224
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->a:Landroid/support/v4/app/FragmentActivity;

    const v4, 0x7f0b00b4

    invoke-static {v0, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringFromField(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v4

    .line 225
    const-string v0, ""

    .line 227
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 228
    invoke-virtual {p0, v6}, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 234
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    const v0, 0x7f0d027d

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 237
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    const v0, 0x7f0d027c

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v4}, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 241
    const v0, 0x7f0d0279

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 243
    :cond_3
    return-object v0

    .line 230
    :cond_4
    invoke-static {v3}, Lde/gdata/mobilesecurity/util/MyUtil;->isEmailValid(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 231
    invoke-virtual {p0, v6}, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLandingPageUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 331
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v1

    .line 332
    const-string v0, "http://www.gdatasoftware.com/rdk/wk-int-isa"

    .line 334
    const-string v2, "AUT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 335
    const-string v0, "http://www.gdatasoftware.com/rdk/wk-at-isa"

    .line 357
    :cond_0
    :goto_0
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 359
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isOrangeOemVersion()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 360
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/OemOrange;->GetBuyUrl(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 365
    :cond_1
    :goto_1
    return-object v0

    .line 336
    :cond_2
    const-string v2, "DEU"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 337
    const-string v0, "http://www.gdatasoftware.com/rdk/wk-de-isa"

    goto :goto_0

    .line 338
    :cond_3
    const-string v2, "CHE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 339
    const-string v0, "http://www.gdatasoftware.com/rdk/wk-ch-isa"

    goto :goto_0

    .line 340
    :cond_4
    const-string v2, "FRA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 341
    const-string v0, "http://www.gdatasoftware.com/rdk/wk-fr-isa"

    goto :goto_0

    .line 342
    :cond_5
    const-string v2, "GBR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 343
    const-string v0, "http://www.gdatasoftware.com/rdk/wk-uk-isa"

    goto :goto_0

    .line 344
    :cond_6
    const-string v2, "USA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 345
    const-string v0, "http://www.gdatasoftware.com/rdk/wk-us-isa"

    goto :goto_0

    .line 346
    :cond_7
    const-string v2, "ESP"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 347
    const-string v0, "http://www.gdatasoftware.com/rdk/wk-es-isa"

    goto :goto_0

    .line 348
    :cond_8
    const-string v2, "POL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 349
    const-string v0, "http://www.gdatasoftware.com/rdk/wk-pl-isa"

    goto :goto_0

    .line 350
    :cond_9
    const-string v2, "BEL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 351
    const-string v0, "http://www.gdatasoftware.com/rdk/wk-be-isa"

    goto :goto_0

    .line 352
    :cond_a
    const-string v2, "NLD"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 353
    const-string v0, "http://www.gdatasoftware.com/rdk/wk-nl-isa"

    goto :goto_0

    .line 354
    :cond_b
    const-string v2, "ITA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    const-string v0, "http://www.gdatasoftware.com/rdk/wk-it-isa"

    goto :goto_0

    .line 361
    :cond_c
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isGlobalWiseVersion()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 362
    const-string v0, "http://gshop.g-wise.co.jp/btoc/order/phone.php"

    goto :goto_1
.end method


# virtual methods
.method public OCL_register()V
    .locals 11

    .prologue
    .line 251
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->a:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x7f0b00b0

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringFromField(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v1

    .line 252
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->a:Landroid/support/v4/app/FragmentActivity;

    const v2, 0x7f0b00b1

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringFromField(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v2

    .line 253
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->a:Landroid/support/v4/app/FragmentActivity;

    const v3, 0x7f0b00b2

    invoke-static {v0, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringFromField(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v3

    .line 254
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->a:Landroid/support/v4/app/FragmentActivity;

    const v4, 0x7f0b00b3

    invoke-static {v0, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringFromField(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v4

    .line 255
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->a:Landroid/support/v4/app/FragmentActivity;

    const v5, 0x7f0b00b6

    invoke-static {v0, v5}, Lde/gdata/mobilesecurity/util/MyUtil;->getBoolFromCBox(Landroid/app/Activity;I)Z

    move-result v5

    .line 256
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->a:Landroid/support/v4/app/FragmentActivity;

    const v6, 0x7f0b00b5

    invoke-static {v0, v6}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringFromField(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v6

    .line 257
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->a:Landroid/support/v4/app/FragmentActivity;

    const v7, 0x7f0b00b4

    invoke-static {v0, v7}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringFromField(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v7

    .line 259
    invoke-direct {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 296
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_2

    .line 267
    :cond_1
    const/4 v0, -0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->onServerStatus(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 271
    :cond_2
    const-string v0, ""

    .line 273
    iget-object v8, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->b:Landroid/content/Context;

    invoke-static {v8}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v8

    invoke-virtual {v8}, Lde/gdata/mobilesecurity/util/Trial;->isUnregisteredTrial()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 274
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 275
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->b:Landroid/content/Context;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/Trial;->getRegNoEnc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyUtil;->decodeAndDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/Trial;->getGeneration()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 278
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "G="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";C="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->b:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lde/gdata/mobilesecurity/util/Trial;->getDeviceId(Landroid/content/Context;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    :cond_4
    iget-object v8, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v8}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isOrangeOemVersion()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 283
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->b:Landroid/content/Context;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/Trial;->getRegNoEnc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyUtil;->decodeAndDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/Trial;->getGeneration()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 286
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "G="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";C="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->b:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lde/gdata/mobilesecurity/util/Trial;->getDeviceId(Landroid/content/Context;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    new-instance v7, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v7, v8, p0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;-><init>(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;)V

    const/16 v8, 0x9

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v1, 0x1

    aput-object v2, v8, v1

    const/4 v1, 0x2

    aput-object v3, v8, v1

    const/4 v1, 0x3

    aput-object v4, v8, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x5

    aput-object v0, v8, v1

    const/4 v0, 0x6

    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x7

    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getDecryptedPassword()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v6, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->normalizePhoneNumber(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    invoke-virtual {v7, v8}, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 292
    :cond_5
    new-instance v8, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;

    iget-object v9, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v8, v9, p0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;-><init>(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;)V

    const/16 v9, 0xa

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v1, 0x1

    aput-object v2, v9, v1

    const/4 v1, 0x2

    aput-object v3, v9, v1

    const/4 v1, 0x3

    aput-object v4, v9, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v1

    const/4 v1, 0x5

    aput-object v0, v9, v1

    const/4 v0, 0x6

    const-string v1, ""

    aput-object v1, v9, v0

    const/4 v0, 0x7

    const-string v1, ""

    aput-object v1, v9, v0

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v6, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->normalizePhoneNumber(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    const/16 v0, 0x9

    aput-object v7, v9, v0

    invoke-virtual {v8, v9}, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 213
    const-string v0, "(?:(?:\\d|[A-Z]){5}\\-){0,4}(?:(?:\\d|[A-Z])){0,5}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 217
    const-string v0, "^\\d{6,7}$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public createGui(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    .prologue
    const v11, 0x7f0b00b7

    const v10, 0x7f0b00b0

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 88
    const v0, 0x7f030020

    invoke-virtual {p1, v0, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 90
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 92
    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 94
    const v0, 0x7f0b00ae

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 95
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->b:Landroid/content/Context;

    const v3, 0x7f0d0515

    invoke-static {v1, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isOrangeOemVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0d03df

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 98
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d0071

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object v3, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isOrangeOemVersion()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    const-string v1, ""

    .line 103
    const v0, 0x7f0d03de

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_1
    new-instance v3, Landroid/text/SpannableStringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 107
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const/high16 v5, -0x10000

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 109
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 111
    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {v3, v4, v5, v0, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 112
    const v0, 0x7f0b00af

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 113
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isCompassOemVersion()Z

    move-result v1

    if-nez v1, :cond_7

    .line 114
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    new-instance v1, Lde/gdata/mobilesecurity/fragments/ag;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/fragments/ag;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    :goto_0
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->d:Z

    if-nez v0, :cond_4

    .line 126
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->b:Landroid/content/Context;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/Trial;->isUnregisteredTrial()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isOrangeOemVersion()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    :cond_2
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 128
    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setVisibility(I)V

    .line 129
    const-string v1, "."

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    new-instance v3, Lde/gdata/mobilesecurity/util/BasePreferences;

    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->b:Landroid/content/Context;

    invoke-direct {v3, v0}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 133
    const v0, 0x7f0b00b6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 135
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isOrangeOemVersion()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0d03dd

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    .line 137
    :cond_3
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->isHutchinsonOemVersion()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 138
    const v1, 0x7f0b00b5

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 139
    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 140
    iget-object v4, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->b:Landroid/content/Context;

    invoke-static {v4}, Lde/gdata/mobilesecurity/util/MyUtil;->getNormalizedPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const v1, 0x7f0d006e

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 143
    const-string v4, "oem_partner_company"

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->getOemDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_4
    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 150
    new-instance v1, Lde/gdata/mobilesecurity/fragments/ah;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/fragments/ah;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 158
    new-instance v1, Lde/gdata/mobilesecurity/fragments/ai;

    invoke-direct {v1, p0, v0}, Lde/gdata/mobilesecurity/fragments/ai;-><init>(Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 196
    const-string v0, "download"

    const-string v1, "download"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 197
    const v0, 0x7f0b00b4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 198
    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 201
    :cond_5
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->restrictButtonWidth(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 202
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->a:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x7f0a005c

    invoke-static {v0, v11, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->setButtonWidth(Landroid/app/Activity;II)V

    .line 204
    :cond_6
    return-object v2

    .line 122
    :cond_7
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 59
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->a:Landroid/support/v4/app/FragmentActivity;

    .line 61
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->b:Landroid/content/Context;

    .line 62
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 63
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->a:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_1

    const-string v1, "STARTED_FROM_WIZARD"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "STARTED_FROM_WIZARD"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->d:Z

    .line 68
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->a:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->a:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0, p1, p2, p3}, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->createGui(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onServerStatus(ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 305
    sparse-switch p1, :sswitch_data_0

    .line 326
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showErrorDialog(Landroid/support/v4/app/FragmentActivity;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;I)Landroid/support/v4/app/DialogFragment;

    .line 328
    :goto_0
    return-void

    .line 308
    :sswitch_0
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->d:Z

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 311
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 312
    const-string v1, "AUTO_START_UPDATE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 313
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 315
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 316
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 317
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 322
    :sswitch_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->a:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x7f0d0512

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showOkWithFinishDialog(Landroid/support/v4/app/FragmentActivity;I)Landroid/support/v4/app/DialogFragment;

    goto :goto_0

    .line 305
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1869f -> :sswitch_1
    .end sparse-switch
.end method
