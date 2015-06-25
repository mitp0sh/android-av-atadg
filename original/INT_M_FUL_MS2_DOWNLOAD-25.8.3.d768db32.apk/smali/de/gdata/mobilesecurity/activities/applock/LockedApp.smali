.class public Lde/gdata/mobilesecurity/activities/applock/LockedApp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ALLOWED:I = 0x0

.field public static ALLOW_DENY:I = 0x0

.field public static ALLOW_GRANT:I = 0x0

.field public static ALLOW_LOCK:I = 0x0

.field public static ALLOW_REQUEST:I = 0x0

.field public static ALLOW_UNLOCK:I = 0x0

.field public static DENIED:I = 0x0

.field public static GRANTED:I = 0x0

.field public static LOCKED:I = 0x0

.field public static PROHIBITED:I = 0x0

.field public static REQUIRED:I = 0x0

.field public static STAT_NORMAL:I = 0x0

.field public static STAT_REQUEST_SENT:I = 0x0

.field public static UNLOCKED:I = 0x0

.field public static final UNLOCK_TIME_120:I = 0x78

.field public static final UNLOCK_TIME_15:I = 0xf

.field public static final UNLOCK_TIME_240:I = 0xf0

.field public static final UNLOCK_TIME_30:I = 0x1e

.field public static final UNLOCK_TIME_60:I = 0x3c


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/content/pm/ResolveInfo;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 12
    sput v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->GRANTED:I

    .line 14
    sput v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->DENIED:I

    .line 16
    sput v2, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->UNLOCKED:I

    .line 18
    sput v3, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->LOCKED:I

    .line 21
    sput v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOWED:I

    .line 23
    sput v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->PROHIBITED:I

    .line 25
    sput v2, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->REQUIRED:I

    .line 34
    sput v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_LOCK:I

    .line 35
    sput v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_UNLOCK:I

    .line 36
    sput v2, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_DENY:I

    .line 37
    sput v3, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_GRANT:I

    .line 38
    const/16 v0, 0x10

    sput v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_REQUEST:I

    .line 50
    const/4 v0, 0x0

    sput v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->STAT_NORMAL:I

    .line 51
    sput v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->STAT_REQUEST_SENT:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILandroid/graphics/Bitmap;Landroid/content/pm/ResolveInfo;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->j:I

    .line 81
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->a:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->b:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->c:Ljava/lang/String;

    .line 85
    iput p4, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->d:I

    .line 86
    iput p5, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->e:I

    .line 87
    iput p6, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->f:I

    .line 89
    iput p7, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->g:I

    .line 91
    iput-object p8, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->h:Landroid/graphics/Bitmap;

    .line 92
    iput-object p9, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->i:Landroid/content/pm/ResolveInfo;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILandroid/graphics/Bitmap;Landroid/content/pm/ResolveInfo;I)V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->j:I

    .line 110
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->a:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->b:Ljava/lang/String;

    .line 112
    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->c:Ljava/lang/String;

    .line 114
    iput p4, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->d:I

    .line 115
    iput p5, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->e:I

    .line 116
    iput p6, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->f:I

    .line 118
    iput p7, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->g:I

    .line 120
    iput-object p8, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->h:Landroid/graphics/Bitmap;

    .line 121
    iput-object p9, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->i:Landroid/content/pm/ResolveInfo;

    .line 123
    iput p10, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->j:I

    .line 124
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->h:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->i:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public getInstallMode()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->f:I

    return v0
.end method

.method public getLockMode()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->e:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->d:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->g:I

    return v0
.end method

.method public getTimeUnlocked()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->j:I

    return v0
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->h:Landroid/graphics/Bitmap;

    .line 252
    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->b:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setInfo(Landroid/content/pm/ResolveInfo;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->i:Landroid/content/pm/ResolveInfo;

    .line 268
    return-void
.end method

.method public setInstallMode(I)V
    .locals 0

    .prologue
    .line 219
    iput p1, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->f:I

    .line 220
    return-void
.end method

.method public setLockMode(I)V
    .locals 0

    .prologue
    .line 171
    iput p1, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->e:I

    .line 172
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->a:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setPackageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->c:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setPermissions(I)V
    .locals 0

    .prologue
    .line 203
    iput p1, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->d:I

    .line 204
    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .prologue
    .line 235
    iput p1, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->g:I

    .line 236
    return-void
.end method

.method public setTimeUnlocked(I)V
    .locals 0

    .prologue
    .line 275
    iput p1, p0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->j:I

    .line 276
    return-void
.end method
