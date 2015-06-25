.class public Lde/gdata/mobilesecurity/services/GpsSender;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static SEND_TYPE_ANTITHEFT:I

.field public static SEND_TYPE_PANIC_BUTTON:I


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private c:I

.field private d:Landroid/location/LocationManager;

.field private e:Landroid/location/LocationListener;

.field private f:Landroid/location/LocationListener;

.field private g:Landroid/location/Location;

.field public gpsProviderStatus:I

.field private h:I

.field private i:Ljava/util/Timer;

.field private j:Ljava/util/TimerTask;

.field private k:Landroid/os/Looper;

.field public networkProviderStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    sput v0, Lde/gdata/mobilesecurity/services/GpsSender;->SEND_TYPE_ANTITHEFT:I

    .line 63
    const/4 v0, 0x0

    sput v0, Lde/gdata/mobilesecurity/services/GpsSender;->SEND_TYPE_PANIC_BUTTON:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 64
    iput v2, p0, Lde/gdata/mobilesecurity/services/GpsSender;->c:I

    .line 68
    iput-object v1, p0, Lde/gdata/mobilesecurity/services/GpsSender;->d:Landroid/location/LocationManager;

    .line 72
    new-instance v0, Lde/gdata/mobilesecurity/services/b;

    invoke-direct {v0, p0, v1}, Lde/gdata/mobilesecurity/services/b;-><init>(Lde/gdata/mobilesecurity/services/GpsSender;Lde/gdata/mobilesecurity/services/a;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->e:Landroid/location/LocationListener;

    .line 76
    new-instance v0, Lde/gdata/mobilesecurity/services/b;

    invoke-direct {v0, p0, v1}, Lde/gdata/mobilesecurity/services/b;-><init>(Lde/gdata/mobilesecurity/services/GpsSender;Lde/gdata/mobilesecurity/services/a;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->f:Landroid/location/LocationListener;

    .line 80
    iput v3, p0, Lde/gdata/mobilesecurity/services/GpsSender;->networkProviderStatus:I

    .line 84
    iput v3, p0, Lde/gdata/mobilesecurity/services/GpsSender;->gpsProviderStatus:I

    .line 89
    iput-object v1, p0, Lde/gdata/mobilesecurity/services/GpsSender;->g:Landroid/location/Location;

    .line 93
    iput v2, p0, Lde/gdata/mobilesecurity/services/GpsSender;->h:I

    .line 98
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->i:Ljava/util/Timer;

    .line 109
    iput-object p1, p0, Lde/gdata/mobilesecurity/services/GpsSender;->a:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Lde/gdata/mobilesecurity/services/GpsSender;->b:Ljava/lang/String;

    .line 111
    iput p3, p0, Lde/gdata/mobilesecurity/services/GpsSender;->c:I

    .line 112
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/services/GpsSender;I)I
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lde/gdata/mobilesecurity/services/GpsSender;->h:I

    return p1
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/services/GpsSender;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lde/gdata/mobilesecurity/services/GpsSender;->g:Landroid/location/Location;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    .line 162
    new-instance v0, Lde/gdata/mobilesecurity/services/a;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/services/a;-><init>(Lde/gdata/mobilesecurity/services/GpsSender;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->j:Ljava/util/TimerTask;

    .line 169
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->i:Ljava/util/Timer;

    iget-object v1, p0, Lde/gdata/mobilesecurity/services/GpsSender;->j:Ljava/util/TimerTask;

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 170
    return-void
.end method

.method private a(Landroid/location/LocationManager;)V
    .locals 1

    .prologue
    .line 119
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->g:Landroid/location/Location;

    .line 120
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->g:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 121
    const-string v0, "network"

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->g:Landroid/location/Location;

    .line 123
    :cond_0
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/services/GpsSender;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lde/gdata/mobilesecurity/services/GpsSender;->f()V

    return-void
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/services/GpsSender;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->h:I

    return v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 177
    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 183
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.widget.SettingsAppWidgetProvider"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v1, "3"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 187
    iget-object v1, p0, Lde/gdata/mobilesecurity/services/GpsSender;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/services/GpsSender;)I
    .locals 2

    .prologue
    .line 38
    iget v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lde/gdata/mobilesecurity/services/GpsSender;->h:I

    return v0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->a:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 200
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 202
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 203
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 206
    :cond_0
    return-object v0

    .line 200
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 202
    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method private d()V
    .locals 2

    .prologue
    .line 214
    iget v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->c:I

    sget v1, Lde/gdata/mobilesecurity/services/GpsSender;->SEND_TYPE_ANTITHEFT:I

    if-ne v0, v1, :cond_1

    .line 215
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/GpsSender;->sendAnthitheftResult()V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->c:I

    sget v1, Lde/gdata/mobilesecurity/services/GpsSender;->SEND_TYPE_PANIC_BUTTON:I

    if-ne v0, v1, :cond_0

    .line 217
    invoke-direct {p0}, Lde/gdata/mobilesecurity/services/GpsSender;->e()V

    goto :goto_0
.end method

.method private e()V
    .locals 15

    .prologue
    .line 222
    .line 223
    const-string v0, ""

    .line 224
    const-string v0, ""

    .line 225
    const-string v0, ""

    .line 226
    invoke-direct {p0}, Lde/gdata/mobilesecurity/services/GpsSender;->c()Ljava/lang/String;

    move-result-object v4

    .line 227
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/services/GpsSender;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 228
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getPanicButtonSender()Ljava/lang/String;

    move-result-object v3

    .line 229
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getRegisteredEmail()Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getEmailForLocation()Ljava/lang/String;

    move-result-object v0

    .line 232
    const-string v2, ""

    .line 233
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 234
    :cond_0
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 236
    :goto_0
    invoke-static {v3}, Lde/gdata/mobilesecurity/util/MyUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 238
    :goto_1
    iget v1, p0, Lde/gdata/mobilesecurity/services/GpsSender;->networkProviderStatus:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    iget v1, p0, Lde/gdata/mobilesecurity/services/GpsSender;->gpsProviderStatus:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v1, 0x1

    move v7, v1

    .line 239
    :goto_2
    if-eqz v7, :cond_6

    iget-object v1, p0, Lde/gdata/mobilesecurity/services/GpsSender;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d04e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 241
    :goto_3
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/GpsSender;->g:Landroid/location/Location;

    if-eqz v2, :cond_9

    .line 242
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/GpsSender;->g:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 243
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/GpsSender;->g:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://maps.google.de/maps?hl=de&q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://maps.google.com/maps/api/staticmap?zoom=18&size=480x360&maptype=satellite&markers=color:green|label:|"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&sensor=true"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 251
    const-string v5, "CHN"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.bing.com/maps/?v=2&lvl=18&cp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&sp=point."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    move-object v6, v2

    .line 258
    :goto_4
    if-eqz v7, :cond_7

    .line 259
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/GpsSender;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d03f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 260
    iget-object v3, p0, Lde/gdata/mobilesecurity/services/GpsSender;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v13, 0x7f0d03f9

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 267
    :goto_5
    const-string v13, "#0#"

    invoke-virtual {v2, v13, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#1#"

    invoke-virtual {v1, v2, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#2#"

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#3#"

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 269
    const-string v2, "#4#"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 271
    const-string v2, "#1#"

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 272
    const-string v2, "#2#"

    invoke-virtual {v0, v2, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<lat>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "</lat><long>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "</long><gps>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v7, :cond_8

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "</gps>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    :goto_7
    iget-object v3, p0, Lde/gdata/mobilesecurity/services/GpsSender;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0d00dc

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 285
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 286
    const-string v2, "#5#"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<mac>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, v4

    :goto_8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</mac>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<data>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</data>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->b:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] to ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/services/GpsSender;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 293
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/services/GpsSender;->b:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_9
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->b:Ljava/lang/String;

    .line 301
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 302
    iget-object v1, p0, Lde/gdata/mobilesecurity/services/GpsSender;->a:Landroid/content/Context;

    const v2, 0x7f0d00aa

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 304
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/GpsSender;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1, v6}, Lde/gdata/mobilesecurity/util/EmailClient;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 307
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    .line 234
    goto/16 :goto_0

    .line 236
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    const-string v0, ""

    goto :goto_a

    .line 238
    :cond_5
    const/4 v1, 0x0

    move v7, v1

    goto/16 :goto_2

    .line 239
    :cond_6
    const-string v1, ""

    goto/16 :goto_3

    .line 263
    :cond_7
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/GpsSender;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d03f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 264
    iget-object v3, p0, Lde/gdata/mobilesecurity/services/GpsSender;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v13, 0x7f0d03fa

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    .line 273
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 276
    :cond_9
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/GpsSender;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d03f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#0#"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 278
    const-string v3, "#4#"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 279
    iget-object v3, p0, Lde/gdata/mobilesecurity/services/GpsSender;->a:Landroid/content/Context;

    const v5, 0x7f0d03fb

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "#0#"

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<lat></lat><long></long><gps>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v7, :cond_a

    const/4 v1, 0x1

    :goto_b
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "</gps>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    const-string v5, "#4#"

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v14

    goto/16 :goto_7

    .line 280
    :cond_a
    const/4 v1, 0x0

    goto :goto_b

    .line 287
    :cond_b
    const-string v0, ""

    goto/16 :goto_8

    .line 298
    :cond_c
    const-string v0, "Sender empty."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 294
    :catch_0
    move-exception v0

    goto/16 :goto_9

    :cond_d
    move-object v5, v2

    move-object v6, v3

    goto/16 :goto_4

    :cond_e
    move-object v0, v2

    goto/16 :goto_0
.end method

.method private declared-synchronized f()V
    .locals 2

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->k:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->i:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 316
    invoke-direct {p0}, Lde/gdata/mobilesecurity/services/GpsSender;->d()V

    .line 318
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->d:Landroid/location/LocationManager;

    iget-object v1, p0, Lde/gdata/mobilesecurity/services/GpsSender;->e:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 319
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->d:Landroid/location/LocationManager;

    iget-object v1, p0, Lde/gdata/mobilesecurity/services/GpsSender;->f:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 321
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->k:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->k:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :cond_0
    monitor-exit p0

    return-void

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected isMoreAccurate(Landroid/location/Location;)Z
    .locals 10

    .prologue
    .line 133
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 155
    :goto_0
    return v0

    .line 134
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->g:Landroid/location/Location;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lde/gdata/mobilesecurity/services/GpsSender;->g:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 138
    const-wide/32 v2, 0x1d4c0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 139
    const/4 v0, 0x1

    goto :goto_0

    .line 140
    :cond_2
    const-wide/32 v2, -0x1d4c0

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    .line 142
    :cond_3
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/services/GpsSender;->g:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v2, v3

    .line 144
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    iget-object v3, p0, Lde/gdata/mobilesecurity/services/GpsSender;->g:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    iget-object v3, p0, Lde/gdata/mobilesecurity/services/GpsSender;->g:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 147
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lde/gdata/mobilesecurity/services/GpsSender;->g:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->hasAccuracy()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 148
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_5

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, v2, v0

    if-gez v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 149
    :cond_6
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lde/gdata/mobilesecurity/services/GpsSender;->g:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->hasAccuracy()Z

    move-result v3

    if-nez v3, :cond_8

    .line 150
    const-wide v0, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    cmpl-double v0, v4, v0

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 151
    :cond_8
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 152
    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_9

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, v2, v0

    if-gez v0, :cond_a

    :cond_9
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 153
    :cond_b
    iget-object v3, p0, Lde/gdata/mobilesecurity/services/GpsSender;->g:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->hasAccuracy()Z

    move-result v3

    if-eqz v3, :cond_d

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_c

    const/high16 v0, -0x3d380000    # -100.0f

    cmpg-float v0, v2, v0

    if-gez v0, :cond_c

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 155
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public run()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x2710

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 406
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "GpsSender"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->a:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->d:Landroid/location/LocationManager;

    .line 410
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 411
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->k:Landroid/os/Looper;

    .line 413
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->d:Landroid/location/LocationManager;

    if-eqz v0, :cond_3

    .line 414
    invoke-direct {p0}, Lde/gdata/mobilesecurity/services/GpsSender;->a()V

    .line 415
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->d:Landroid/location/LocationManager;

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/services/GpsSender;->a(Landroid/location/LocationManager;)V

    .line 417
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->d:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lde/gdata/mobilesecurity/services/GpsSender;->b()V

    .line 419
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->d:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->d:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lde/gdata/mobilesecurity/services/GpsSender;->e:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 424
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->d:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 425
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->d:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lde/gdata/mobilesecurity/services/GpsSender;->f:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 435
    :goto_1
    iget v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->networkProviderStatus:I

    if-nez v0, :cond_4

    iget v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->gpsProviderStatus:I

    if-nez v0, :cond_4

    .line 437
    invoke-direct {p0}, Lde/gdata/mobilesecurity/services/GpsSender;->d()V

    .line 444
    :goto_2
    return-void

    .line 422
    :cond_1
    iput v6, p0, Lde/gdata/mobilesecurity/services/GpsSender;->gpsProviderStatus:I

    goto :goto_0

    .line 428
    :cond_2
    iput v6, p0, Lde/gdata/mobilesecurity/services/GpsSender;->networkProviderStatus:I

    goto :goto_1

    .line 431
    :cond_3
    iput v6, p0, Lde/gdata/mobilesecurity/services/GpsSender;->networkProviderStatus:I

    .line 432
    iput v6, p0, Lde/gdata/mobilesecurity/services/GpsSender;->gpsProviderStatus:I

    goto :goto_1

    .line 440
    :cond_4
    const-string v0, "Location listeners running"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 441
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 442
    const-string v0, "Location listeners stopped"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public sendAnthitheftResult()V
    .locals 13

    .prologue
    .line 327
    .line 328
    const-string v0, ""

    .line 329
    const-string v0, ""

    .line 330
    const-string v0, ""

    .line 331
    invoke-direct {p0}, Lde/gdata/mobilesecurity/services/GpsSender;->c()Ljava/lang/String;

    move-result-object v4

    .line 333
    iget v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->networkProviderStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->gpsProviderStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    move v6, v0

    .line 334
    :goto_0
    if-eqz v6, :cond_2

    iget-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d04e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 336
    :goto_1
    iget-object v1, p0, Lde/gdata/mobilesecurity/services/GpsSender;->g:Landroid/location/Location;

    if-eqz v1, :cond_5

    .line 337
    iget-object v1, p0, Lde/gdata/mobilesecurity/services/GpsSender;->g:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 338
    iget-object v1, p0, Lde/gdata/mobilesecurity/services/GpsSender;->g:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://maps.google.de/maps?hl=de&q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://maps.google.com/maps/api/staticmap?zoom=18&size=480x360&maptype=satellite&markers=color:green|label:|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&sensor=true"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 346
    const-string v3, "CHN"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.bing.com/maps/?v=2&lvl=18&cp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&sp=point."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move-object v5, v1

    .line 353
    :goto_2
    if-eqz v6, :cond_3

    .line 354
    iget-object v1, p0, Lde/gdata/mobilesecurity/services/GpsSender;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d04e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 355
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/GpsSender;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v12, 0x7f0d04d8

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 362
    :goto_3
    const-string v12, "#0#"

    invoke-virtual {v1, v12, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#1#"

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#2#"

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#3#"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 364
    const-string v0, "#1#"

    invoke-virtual {v2, v0, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<lat>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "</lat><long>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "</long><gps>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v6, :cond_4

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "</gps>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    :goto_5
    iget-object v3, p0, Lde/gdata/mobilesecurity/services/GpsSender;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0d00dc

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 375
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 376
    const-string v2, "#4#"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<mac>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, v4

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</mac>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<data>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</data>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 380
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] to ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/services/GpsSender;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 382
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/services/GpsSender;->b:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 386
    :goto_7
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/services/GpsSender;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getEmailForLocation()Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 389
    iget-object v1, p0, Lde/gdata/mobilesecurity/services/GpsSender;->a:Landroid/content/Context;

    const v2, 0x7f0d00aa

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 391
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/GpsSender;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1, v6}, Lde/gdata/mobilesecurity/util/EmailClient;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 394
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->a:Landroid/content/Context;

    const/16 v1, 0x22

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v0, v1, v7, v2, v3}, Lde/gdata/mobilesecurity/services/WatcherService;->insertLogEntry(Landroid/content/Context;ILjava/lang/String;ZI)V

    .line 397
    new-instance v0, Lde/gdata/webportal/android/Preferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/services/GpsSender;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/webportal/android/Preferences;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lde/gdata/webportal/android/Preferences;->setWebPortalLastSync(J)V

    .line 398
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/GpsSender;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/webportal/android/WebPortalSyncService;->startSync(Landroid/content/Context;)V

    .line 399
    return-void

    .line 333
    :cond_1
    const/4 v0, 0x0

    move v6, v0

    goto/16 :goto_0

    .line 334
    :cond_2
    const-string v0, ""

    goto/16 :goto_1

    .line 358
    :cond_3
    iget-object v1, p0, Lde/gdata/mobilesecurity/services/GpsSender;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d04e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 359
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/GpsSender;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v12, 0x7f0d04d9

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 365
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 368
    :cond_5
    iget-object v1, p0, Lde/gdata/mobilesecurity/services/GpsSender;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d04eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#0#"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 370
    iget-object v2, p0, Lde/gdata/mobilesecurity/services/GpsSender;->a:Landroid/content/Context;

    const v3, 0x7f0d04de

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#0#"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<lat></lat><long></long><gps>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v6, :cond_6

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "</gps>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_6
    const/4 v0, 0x0

    goto :goto_8

    .line 377
    :cond_7
    const-string v0, ""

    goto/16 :goto_6

    .line 384
    :cond_8
    const-string v0, "Sender empty."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_9
    move-object v3, v1

    move-object v5, v2

    goto/16 :goto_2
.end method
