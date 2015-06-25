.class public Lde/gdata/mobilesecurity/services/WatcherService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static A:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lde/gdata/mobilesecurity/services/v;",
            ">;"
        }
    .end annotation
.end field

.field public static final CHROME_BROWSER_BOOKMARKS_API_URI:Landroid/net/Uri;

.field public static final ENCLOSING_QUOTATION_MARKS:Ljava/lang/String; = "^\"(.*)\"$"

.field public static final HTC_BROWSER_HISTORY_URI:Landroid/net/Uri;

.field private static I:Ljava/lang/String;

.field private static J:Z

.field private static K:Z

.field private static L:Z

.field private static volatile M:Z

.field private static N:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final NEW_CHROME_BOOKMARKS_API_URI:Landroid/net/Uri;

.field private static O:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final SAMSUNG_BROWSER_HISTORY_URI:Landroid/net/Uri;

.field private static T:J

.field private static U:J

.field private static final V:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final W:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final X:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static ah:Ljava/lang/String;

.field private static ai:Ljava/lang/String;

.field private static volatile c:Z

.field public static currentLockedLocation:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

.field private static d:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:J

.field private static h:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static l:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile localFilesAvailable:Z

.field private static m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile recentlyChecked:Ljava/lang/String;

.field private static v:Lde/gdata/mobilesecurity/services/p;

.field public static watcherService:Lde/gdata/mobilesecurity/services/WatcherService;

.field private static x:Lde/gdata/mobilesecurity/services/k;

.field private static y:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private B:Lde/gdata/mobilesecurity/services/v;

.field private C:Lde/gdata/mobilesecurity/services/v;

.field private D:Lde/gdata/mobilesecurity/services/v;

.field private E:Lde/gdata/mobilesecurity/services/v;

.field private F:Lde/gdata/mobilesecurity/services/v;

.field private G:Lde/gdata/mobilesecurity/services/n;

.field private H:Lde/gdata/mobilesecurity/privacy/CallLogObserver;

.field private P:J

.field private Q:J

.field private R:Ljava/lang/String;

.field private S:Landroid/content/ComponentName;

.field private Y:Landroid/os/Handler;

.field private Z:Landroid/location/LocationManager;

.field a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private aa:J

.field private ab:Lde/gdata/mobilesecurity/services/m;

.field private ac:Lde/gdata/mobilesecurity/services/m;

.field private ad:Z

.field private ae:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;",
            ">;"
        }
    .end annotation
.end field

.field private af:Lde/gdata/mobilesecurity/receiver/HeadsetStateReceiver;

.field private final ag:Landroid/content/BroadcastReceiver;

.field private volatile b:Z

.field private f:J

.field private final g:J

.field private q:Lde/gdata/mobilesecurity/secsrv/SecSrv;

.field private r:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/String;

.field private final t:I

.field private u:Lde/gdata/mobilesecurity/services/l;

.field private w:Lde/gdata/mobilesecurity/services/u;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 130
    const/4 v0, 0x0

    sput-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->watcherService:Lde/gdata/mobilesecurity/services/WatcherService;

    .line 144
    sput-boolean v3, Lde/gdata/mobilesecurity/services/WatcherService;->c:Z

    .line 152
    const-string v0, ""

    sput-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->recentlyChecked:Ljava/lang/String;

    .line 156
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->d:Ljava/util/Vector;

    .line 160
    sput-wide v6, Lde/gdata/mobilesecurity/services/WatcherService;->e:J

    .line 174
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->h:Ljava/util/Vector;

    .line 178
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->i:Ljava/util/Vector;

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->j:Ljava/util/HashMap;

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->k:Ljava/util/HashMap;

    .line 190
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->l:Ljava/util/concurrent/ConcurrentHashMap;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->m:Ljava/util/ArrayList;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->n:Ljava/util/ArrayList;

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->o:Ljava/util/ArrayList;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->p:Ljava/util/ArrayList;

    .line 247
    sput-boolean v3, Lde/gdata/mobilesecurity/services/WatcherService;->localFilesAvailable:Z

    .line 258
    const-string v0, "content://com.android.chrome.browser/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->CHROME_BROWSER_BOOKMARKS_API_URI:Landroid/net/Uri;

    .line 263
    const-string v0, "content://com.android.chrome.browser/history"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->NEW_CHROME_BOOKMARKS_API_URI:Landroid/net/Uri;

    .line 267
    const-string v0, "content://com.sec.android.app.sbrowser.browser/history"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->SAMSUNG_BROWSER_HISTORY_URI:Landroid/net/Uri;

    .line 272
    const-string v0, "content://com.htc.sense.legacy.browser/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->HTC_BROWSER_HISTORY_URI:Landroid/net/Uri;

    .line 290
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->y:Ljava/util/concurrent/ConcurrentHashMap;

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->z:Ljava/util/ArrayList;

    .line 296
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->A:Ljava/util/HashMap;

    .line 332
    sput-boolean v3, Lde/gdata/mobilesecurity/services/WatcherService;->M:Z

    .line 337
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->N:Ljava/util/Hashtable;

    .line 338
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->O:Ljava/util/Hashtable;

    .line 348
    sput-wide v6, Lde/gdata/mobilesecurity/services/WatcherService;->T:J

    .line 349
    sput-wide v6, Lde/gdata/mobilesecurity/services/WatcherService;->U:J

    .line 351
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.android.settings"

    aput-object v1, v0, v3

    const-string v1, "com.android.packageinstaller"

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->V:Ljava/util/List;

    .line 353
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.dialer"

    aput-object v1, v0, v3

    const-string v1, "com.android.phone"

    aput-object v1, v0, v4

    const-string v1, "com.google.android.phone"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "com.google.android.dialer"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.android.systemui"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.sonyericsson.android.socialphonebook"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->W:Ljava/util/List;

    .line 356
    new-array v0, v5, [Ljava/util/List;

    sget-object v1, Lde/gdata/mobilesecurity/services/WatcherService;->W:Ljava/util/List;

    aput-object v1, v0, v3

    sget-object v1, Lde/gdata/mobilesecurity/services/WatcherService;->V:Ljava/util/List;

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->X:Ljava/util/List;

    .line 1699
    const-string v0, "arpDetails.log"

    sput-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->ah:Ljava/lang/String;

    .line 1700
    const-string v0, "beta.mobile@gdata.de"

    sput-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->ai:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 447
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 135
    iput-object v3, p0, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 140
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/services/WatcherService;->b:Z

    .line 165
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->f:J

    .line 169
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->g:J

    .line 239
    iput-object v3, p0, Lde/gdata/mobilesecurity/services/WatcherService;->q:Lde/gdata/mobilesecurity/secsrv/SecSrv;

    .line 243
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->r:Ljava/util/Vector;

    .line 251
    const-string v0, "http://www.test-protection-cloudsecurity.com/"

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->s:Ljava/lang/String;

    .line 253
    const v0, 0x87867

    iput v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->t:I

    .line 358
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->Y:Landroid/os/Handler;

    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->aa:J

    .line 363
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/services/WatcherService;->ad:Z

    .line 391
    new-instance v0, Lde/gdata/mobilesecurity/services/g;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/services/g;-><init>(Lde/gdata/mobilesecurity/services/WatcherService;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->ag:Landroid/content/BroadcastReceiver;

    .line 449
    sput-object p0, Lde/gdata/mobilesecurity/services/WatcherService;->watcherService:Lde/gdata/mobilesecurity/services/WatcherService;

    .line 450
    return-void
.end method

.method private A()V
    .locals 6

    .prologue
    .line 1426
    :try_start_0
    new-instance v0, Lde/gdata/mobilesecurity/services/l;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/services/l;-><init>(Lde/gdata/mobilesecurity/services/WatcherService;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->u:Lde/gdata/mobilesecurity/services/l;

    .line 1427
    new-instance v0, Lde/gdata/mobilesecurity/services/p;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/services/p;-><init>(Lde/gdata/mobilesecurity/services/WatcherService;)V

    sput-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->v:Lde/gdata/mobilesecurity/services/p;

    .line 1428
    new-instance v0, Lde/gdata/mobilesecurity/services/u;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/services/u;-><init>(Lde/gdata/mobilesecurity/services/WatcherService;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->w:Lde/gdata/mobilesecurity/services/u;

    .line 1430
    new-instance v0, Lde/gdata/mobilesecurity/services/v;

    const-string v1, "System"

    sget-object v2, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lde/gdata/mobilesecurity/services/v;-><init>(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->B:Lde/gdata/mobilesecurity/services/v;

    .line 1431
    new-instance v0, Lde/gdata/mobilesecurity/services/v;

    const-string v1, "Chrome"

    sget-object v2, Lde/gdata/mobilesecurity/services/WatcherService;->CHROME_BROWSER_BOOKMARKS_API_URI:Landroid/net/Uri;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "url"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "title"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "date"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "bookmark"

    aput-object v5, v3, v4

    invoke-direct {v0, p0, v1, v2, v3}, Lde/gdata/mobilesecurity/services/v;-><init>(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->C:Lde/gdata/mobilesecurity/services/v;

    .line 1433
    new-instance v0, Lde/gdata/mobilesecurity/services/v;

    const-string v1, "NewChrome"

    sget-object v2, Lde/gdata/mobilesecurity/services/WatcherService;->NEW_CHROME_BOOKMARKS_API_URI:Landroid/net/Uri;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "url"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "title"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "date"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "bookmark"

    aput-object v5, v3, v4

    invoke-direct {v0, p0, v1, v2, v3}, Lde/gdata/mobilesecurity/services/v;-><init>(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->D:Lde/gdata/mobilesecurity/services/v;

    .line 1435
    new-instance v0, Lde/gdata/mobilesecurity/services/v;

    const-string v1, "Samsung"

    sget-object v2, Lde/gdata/mobilesecurity/services/WatcherService;->SAMSUNG_BROWSER_HISTORY_URI:Landroid/net/Uri;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "url"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "title"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "date"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "bookmark"

    aput-object v5, v3, v4

    invoke-direct {v0, p0, v1, v2, v3}, Lde/gdata/mobilesecurity/services/v;-><init>(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->E:Lde/gdata/mobilesecurity/services/v;

    .line 1437
    new-instance v0, Lde/gdata/mobilesecurity/services/v;

    const-string v1, "HTC"

    sget-object v2, Lde/gdata/mobilesecurity/services/WatcherService;->HTC_BROWSER_HISTORY_URI:Landroid/net/Uri;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "url"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "title"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "date"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "bookmark"

    aput-object v5, v3, v4

    invoke-direct {v0, p0, v1, v2, v3}, Lde/gdata/mobilesecurity/services/v;-><init>(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->F:Lde/gdata/mobilesecurity/services/v;

    .line 1440
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->A:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1441
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->A:Ljava/util/HashMap;

    const-string v1, "Android"

    iget-object v2, p0, Lde/gdata/mobilesecurity/services/WatcherService;->B:Lde/gdata/mobilesecurity/services/v;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->A:Ljava/util/HashMap;

    const-string v1, "Chrome"

    iget-object v2, p0, Lde/gdata/mobilesecurity/services/WatcherService;->C:Lde/gdata/mobilesecurity/services/v;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->A:Ljava/util/HashMap;

    const-string v1, "NewChrome"

    iget-object v2, p0, Lde/gdata/mobilesecurity/services/WatcherService;->D:Lde/gdata/mobilesecurity/services/v;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->A:Ljava/util/HashMap;

    const-string v1, "Samsung"

    iget-object v2, p0, Lde/gdata/mobilesecurity/services/WatcherService;->E:Lde/gdata/mobilesecurity/services/v;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->A:Ljava/util/HashMap;

    const-string v1, "HTC"

    iget-object v2, p0, Lde/gdata/mobilesecurity/services/WatcherService;->F:Lde/gdata/mobilesecurity/services/v;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    new-instance v0, Lde/gdata/mobilesecurity/services/n;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lde/gdata/mobilesecurity/services/n;-><init>(Lde/gdata/mobilesecurity/services/WatcherService;Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->G:Lde/gdata/mobilesecurity/services/n;

    .line 1449
    new-instance v0, Lde/gdata/mobilesecurity/privacy/CallLogObserver;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/privacy/CallLogObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->H:Lde/gdata/mobilesecurity/privacy/CallLogObserver;

    .line 1451
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/services/WatcherService;->loadProtectedAppList(Landroid/content/Context;Z)V

    .line 1452
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->c(Landroid/content/Context;)V

    .line 1454
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->u:Lde/gdata/mobilesecurity/services/l;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/services/l;->start()V

    .line 1455
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->startTaskWatchDog()V

    .line 1456
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->w:Lde/gdata/mobilesecurity/services/u;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/services/u;->start()V

    .line 1458
    invoke-static {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->startSpoofChecker(Landroid/content/Context;)V

    .line 1460
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lde/gdata/mobilesecurity/services/WatcherService;->B:Lde/gdata/mobilesecurity/services/v;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1461
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lde/gdata/mobilesecurity/services/WatcherService;->CHROME_BROWSER_BOOKMARKS_API_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lde/gdata/mobilesecurity/services/WatcherService;->C:Lde/gdata/mobilesecurity/services/v;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1462
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lde/gdata/mobilesecurity/services/WatcherService;->NEW_CHROME_BOOKMARKS_API_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lde/gdata/mobilesecurity/services/WatcherService;->D:Lde/gdata/mobilesecurity/services/v;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1463
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lde/gdata/mobilesecurity/services/WatcherService;->SAMSUNG_BROWSER_HISTORY_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lde/gdata/mobilesecurity/services/WatcherService;->E:Lde/gdata/mobilesecurity/services/v;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1464
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lde/gdata/mobilesecurity/services/WatcherService;->HTC_BROWSER_HISTORY_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lde/gdata/mobilesecurity/services/WatcherService;->F:Lde/gdata/mobilesecurity/services/v;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1466
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lde/gdata/mobilesecurity/services/WatcherService;->G:Lde/gdata/mobilesecurity/services/n;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1469
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lde/gdata/mobilesecurity/services/WatcherService;->H:Lde/gdata/mobilesecurity/privacy/CallLogObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1471
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lde/gdata/mobilesecurity/sms/SMSStore;->SMS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lde/gdata/mobilesecurity/services/WatcherService;->H:Lde/gdata/mobilesecurity/privacy/CallLogObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1476
    :goto_0
    return-void

    .line 1473
    :catch_0
    move-exception v0

    .line 1474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WatcherService: start failed ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/services/WatcherService;J)J
    .locals 1

    .prologue
    .line 125
    iput-wide p1, p0, Lde/gdata/mobilesecurity/services/WatcherService;->P:J

    return-wide p1
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/services/WatcherService;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lde/gdata/mobilesecurity/services/WatcherService;->S:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/services/WatcherService;Landroid/location/LocationManager;)Landroid/location/LocationManager;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lde/gdata/mobilesecurity/services/WatcherService;->Z:Landroid/location/LocationManager;

    return-object p1
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/services/WatcherService;Lde/gdata/mobilesecurity/services/m;)Lde/gdata/mobilesecurity/services/m;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lde/gdata/mobilesecurity/services/WatcherService;->ab:Lde/gdata/mobilesecurity/services/m;

    return-object p1
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    return-object p3
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/services/WatcherService;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Lde/gdata/mobilesecurity/services/WatcherService;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/services/WatcherService;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->r:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic a()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->y:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 125
    invoke-static {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->f(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 420
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getUiOptionBus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 421
    new-instance v0, Lde/gdata/mobilesecurity/mdm/DeviceConditions;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/mdm/DeviceConditions;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mdm/DeviceConditions;->isDeviceRooted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 422
    const-string v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    invoke-static {p1}, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->getArrayListDevicePolicies(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 425
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/mdm/DevicePolicy;

    .line 426
    new-instance v2, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;

    invoke-direct {v2, p1}, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;-><init>(Landroid/content/Context;)V

    .line 427
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->getPolicyID()I

    move-result v3

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->loadPolicyItemsFromDB(I)V

    .line 428
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->setRootAllowed(Z)V

    .line 429
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/mdm/DevicePolicyItems;->savePolicyItems()V

    .line 431
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->checkPolicy(I)V

    goto :goto_0

    .line 433
    :cond_0
    invoke-static {p1}, Lde/gdata/mobilesecurity/mms/ManagementServerService;->scheduleUpdate(Landroid/content/Context;)V

    .line 441
    :cond_1
    :goto_1
    return-void

    .line 436
    :cond_2
    invoke-static {p1}, Lde/gdata/mobilesecurity/mms/ManagementServerService;->scheduleUpdate(Landroid/content/Context;)V

    goto :goto_1

    .line 438
    :cond_3
    new-instance v0, Lde/gdata/webportal/android/Preferences;

    invoke-direct {v0, p1}, Lde/gdata/webportal/android/Preferences;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lde/gdata/webportal/android/Preferences;->setWebPortalLastSync(J)V

    .line 439
    invoke-static {p1}, Lde/gdata/webportal/android/WebPortalSyncService;->startSync(Landroid/content/Context;)V

    goto :goto_1
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/services/WatcherService;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lde/gdata/mobilesecurity/services/WatcherService;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Lde/gdata/mobilesecurity/services/WatcherService;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 905
    const v0, 0x7f0d02bb

    invoke-direct {p0, p1, p2, p3, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    .line 906
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 953
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 954
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->Y:Landroid/os/Handler;

    new-instance v1, Lde/gdata/mobilesecurity/services/j;

    invoke-direct {v1, p0, p2, p4, p3}, Lde/gdata/mobilesecurity/services/j;-><init>(Lde/gdata/mobilesecurity/services/WatcherService;Landroid/graphics/drawable/Drawable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 980
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 981
    const-class v0, Lde/gdata/mobilesecurity/activities/applock/DenyAppAccess;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 982
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 984
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 988
    const-string v2, "protectedComponent"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 989
    const-string v2, "permissions"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting denial of activity of ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p3, :cond_3

    :goto_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 993
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/services/WatcherService;->startActivity(Landroid/content/Intent;)V

    .line 995
    return-void

    .line 984
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockPermissions()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_REQUEST:I

    goto :goto_0

    .line 991
    :cond_3
    const-string p3, ""

    goto :goto_1
.end method

.method private a(Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;)Z
    .locals 5

    .prologue
    .line 759
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getLastLC(Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/services/WatcherService;->h(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/services/WatcherService;Z)Z
    .locals 0

    .prologue
    .line 125
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/services/WatcherService;->ad:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 881
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check if uninstaller ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 883
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lde/gdata/mobilesecurity/services/WatcherService;->f:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 884
    const-string v1, "Start proc com.android.packageinstaller for activity com.android.packageinstaller/.UninstallerActivity"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 890
    :cond_0
    :goto_0
    return v0

    .line 887
    :cond_1
    const-string v1, "Trying to launch com.android.packageinstaller/.UninstallerActivity"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 890
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 125
    sput-boolean p0, Lde/gdata/mobilesecurity/services/WatcherService;->M:Z

    return p0
.end method

.method public static addArpException(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1627
    .line 1629
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->y:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    return-void
.end method

.method public static addBssidException(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1637
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1638
    return-void
.end method

.method public static addPhishingException(Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 1415
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->d:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    int-to-long v4, p1

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    sput-wide v0, Lde/gdata/mobilesecurity/services/WatcherService;->e:J

    .line 1417
    return-void
.end method

.method public static addUnlockedApp(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1360
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    return-void
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/services/WatcherService;J)J
    .locals 1

    .prologue
    .line 125
    iput-wide p1, p0, Lde/gdata/mobilesecurity/services/WatcherService;->Q:J

    return-wide p1
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/services/WatcherService;Lde/gdata/mobilesecurity/services/m;)Lde/gdata/mobilesecurity/services/m;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lde/gdata/mobilesecurity/services/WatcherService;->ac:Lde/gdata/mobilesecurity/services/m;

    return-object p1
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/services/WatcherService;)Lde/gdata/mobilesecurity/services/u;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->w:Lde/gdata/mobilesecurity/services/u;

    return-object v0
.end method

.method static synthetic b()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->z:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 125
    invoke-static {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->d(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Lde/gdata/mobilesecurity/services/WatcherService;->b(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 998
    invoke-direct {p0, p1, v0, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->b(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 999
    return-void
.end method

.method private b(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 917
    const v0, 0x7f0d02b8

    invoke-direct {p0, p1, p2, p3, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    .line 918
    return-void
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/services/WatcherService;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/services/WatcherService;J)J
    .locals 1

    .prologue
    .line 125
    iput-wide p1, p0, Lde/gdata/mobilesecurity/services/WatcherService;->aa:J

    return-wide p1
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/services/WatcherService;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized c(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 1333
    const-class v3, Lde/gdata/mobilesecurity/services/WatcherService;

    monitor-enter v3

    :try_start_0
    const-string v0, "timeSliceTablePreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1335
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1336
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1337
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Long;

    if-eqz v2, :cond_0

    sget-object v5, Lde/gdata/mobilesecurity/services/WatcherService;->N:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v5, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1333
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 1338
    :cond_1
    monitor-exit v3

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1006
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting protection of activity of ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 1009
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1010
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 1011
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1013
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1014
    const-class v0, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;

    invoke-virtual {v3, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1015
    const/high16 v0, 0x10000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1017
    const-string v0, "protectedComponent"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1019
    if-lez v2, :cond_0

    const-string v4, "protectedTask"

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1020
    :cond_0
    if-le v2, v5, :cond_1

    .line 1021
    const-string v2, "com.android.launcher2.Launcher"

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1022
    const-string v2, "returnToTask"

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1024
    :cond_1
    invoke-virtual {p0, v3}, Lde/gdata/mobilesecurity/services/WatcherService;->startActivity(Landroid/content/Intent;)V

    .line 1026
    :cond_2
    return-void
.end method

.method static synthetic c()Z
    .locals 1

    .prologue
    .line 125
    sget-boolean v0, Lde/gdata/mobilesecurity/services/WatcherService;->M:Z

    return v0
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/services/WatcherService;)Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->b:Z

    return v0
.end method

.method public static declared-synchronized clearExceptions(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 1641
    const-class v1, Lde/gdata/mobilesecurity/services/WatcherService;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 1643
    sget-object v2, Lde/gdata/mobilesecurity/services/WatcherService;->z:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1644
    sget-object v2, Lde/gdata/mobilesecurity/services/WatcherService;->y:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1646
    const-string v2, ""

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setQueriedNetworks(Ljava/lang/String;)V

    .line 1648
    invoke-static {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->f(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1649
    monitor-exit v1

    return-void

    .line 1641
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static clearUnlockedAppList()V
    .locals 1

    .prologue
    .line 1367
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1368
    return-void
.end method

.method public static copyAssets(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 535
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 536
    const v3, 0x7f0d0457

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0d0459

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    const v3, 0x7f0d0456

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0d0458

    invoke-static {p0, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const v3, 0x7f0d0194

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;

    move-result-object v6

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;->getVersionName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 543
    const v4, 0x7f0d0190

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const v3, 0x7f0d018f

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0d0193

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const v3, 0x7f0d0191

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0d0192

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    const v3, 0x7f0d0197

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0d00f5

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    const v3, 0x7f0d0196

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0d0198

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    const-string v3, "forward.html"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->copyAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Z

    .line 555
    const-string v3, "blocked.html"

    invoke-static {p0, v3, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->copyAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Z

    .line 556
    const-string v3, "logo.gif"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->copyAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Z

    .line 557
    const-string v3, "stop.gif"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->copyAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Z

    .line 558
    const-string v3, "about.html"

    invoke-static {p0, v3, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->copyAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Z

    .line 559
    const-string v3, "ic_app_icon_browser.png"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->copyAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Z

    .line 560
    const-string v3, "blocked_browser.html"

    invoke-static {p0, v3, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->copyAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Z

    .line 562
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_0

    .line 563
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 565
    const-string v4, "forward.html"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/GData"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p0, v4, v5, v6}, Lde/gdata/mobilesecurity/util/MyUtil;->copyAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 566
    const-string v4, "blocked.html"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/GData"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->copyAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 567
    const-string v4, "logo.gif"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/GData"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p0, v4, v5, v6}, Lde/gdata/mobilesecurity/util/MyUtil;->copyAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 568
    const-string v4, "stop.gif"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/GData"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p0, v4, v5, v6}, Lde/gdata/mobilesecurity/util/MyUtil;->copyAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 569
    const-string v4, "about.html"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/GData"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->copyAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 570
    const-string v4, "ic_app_icon_browser.png"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/GData"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p0, v4, v5, v6}, Lde/gdata/mobilesecurity/util/MyUtil;->copyAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 571
    const-string v4, "blocked_browser.html"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/GData"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->copyAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 574
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/GData"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".nomedia"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 576
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :cond_0
    :goto_0
    return v0

    .line 582
    :catch_0
    move-exception v0

    move v0, v1

    .line 583
    goto :goto_0
.end method

.method static synthetic d()J
    .locals 2

    .prologue
    .line 125
    sget-wide v0, Lde/gdata/mobilesecurity/services/WatcherService;->e:J

    return-wide v0
.end method

.method private static declared-synchronized d(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 1345
    const-class v2, Lde/gdata/mobilesecurity/services/WatcherService;

    monitor-enter v2

    :try_start_0
    const-string v0, "timeSliceTablePreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1346
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1348
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1349
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->N:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1350
    sget-object v1, Lde/gdata/mobilesecurity/services/WatcherService;->N:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v3, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1345
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 1351
    :cond_0
    :try_start_1
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1352
    monitor-exit v2

    return-void
.end method

.method static synthetic d(Lde/gdata/mobilesecurity/services/WatcherService;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->z()V

    return-void
.end method

.method static synthetic d(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/services/WatcherService;->c(Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1075
    const-string v0, "Starting browser protection"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 1077
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1078
    const-class v1, Lde/gdata/mobilesecurity/activities/antiphishing/ProtectBrowser;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1079
    const-string v1, "phishingPageNOrigin"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1080
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1082
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->startActivity(Landroid/content/Intent;)V

    .line 1083
    return-void
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1091
    const-string v0, " dat="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1093
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1094
    :cond_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1095
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1097
    :cond_2
    return-object v0
.end method

.method static synthetic e()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->d:Ljava/util/Vector;

    return-object v0
.end method

.method private static declared-synchronized e(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 1656
    const-class v3, Lde/gdata/mobilesecurity/services/WatcherService;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->y:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1657
    const-string v0, "arpExceptionsPreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1659
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1660
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1661
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Long;

    if-eqz v2, :cond_0

    sget-object v5, Lde/gdata/mobilesecurity/services/WatcherService;->y:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v5, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1656
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 1663
    :cond_1
    :try_start_1
    const-string v0, "bssidExceptionsPreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1665
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1666
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1667
    sget-object v2, Lde/gdata/mobilesecurity/services/WatcherService;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lde/gdata/mobilesecurity/services/WatcherService;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1668
    :cond_3
    monitor-exit v3

    return-void
.end method

.method static synthetic e(Lde/gdata/mobilesecurity/services/WatcherService;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->x()V

    return-void
.end method

.method static synthetic e(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/services/WatcherService;->g(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static extendTimeForApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 6

    .prologue
    .line 942
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->O:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->N:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    sget-object v1, Lde/gdata/mobilesecurity/services/WatcherService;->N:Ljava/util/Hashtable;

    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->O:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->isDebugMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    :goto_0
    int-to-long v4, v0

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    :cond_0
    return-void

    .line 944
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic f()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->k:Ljava/util/HashMap;

    return-object v0
.end method

.method private static declared-synchronized f(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 1675
    const-class v2, Lde/gdata/mobilesecurity/services/WatcherService;

    monitor-enter v2

    :try_start_0
    const-string v0, "arpExceptionsPreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1676
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1678
    const-string v0, "Writing exceptions"

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 1679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ARP exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lde/gdata/mobilesecurity/services/WatcherService;->y:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 1680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BSSID exceptions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lde/gdata/mobilesecurity/services/WatcherService;->y:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 1682
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1683
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->y:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1684
    sget-object v1, Lde/gdata/mobilesecurity/services/WatcherService;->y:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v3, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1675
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 1685
    :cond_0
    :try_start_1
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1687
    const-string v0, "bssidExceptionsPreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1688
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1690
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1691
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1692
    const-wide/16 v4, 0x0

    invoke-interface {v1, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 1693
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1694
    monitor-exit v2

    return-void
.end method

.method static synthetic f(Lde/gdata/mobilesecurity/services/WatcherService;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->y()V

    return-void
.end method

.method static synthetic f(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/services/WatcherService;->f(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private f(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1110
    const-string v0, "act=android.intent.action.VIEW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " dat=http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lde/gdata/mobilesecurity/services/WatcherService;)J
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->P:J

    return-wide v0
.end method

.method static synthetic g(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/services/WatcherService;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g()Z
    .locals 1

    .prologue
    .line 125
    sget-boolean v0, Lde/gdata/mobilesecurity/services/WatcherService;->c:Z

    return v0
.end method

.method private g(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1122
    const-string v1, "act=android.intent.action.DELETE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "cmp=com.android.packageinstaller/.UninstallerActivity"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "dat=package:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lde/gdata/mobilesecurity/services/WatcherService;->f:J

    .line 1127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dat=package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1128
    const/4 v0, 0x1

    .line 1132
    :cond_0
    return v0
.end method

.method public static getAppAccessControlList()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 373
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->i:Ljava/util/Vector;

    return-object v0
.end method

.method public static getWebContentObserver(Ljava/lang/String;)Lde/gdata/mobilesecurity/services/v;
    .locals 1

    .prologue
    .line 870
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->A:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->A:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/services/v;

    .line 873
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lde/gdata/mobilesecurity/services/WatcherService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->R:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/services/WatcherService;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h()Z
    .locals 1

    .prologue
    .line 125
    sget-boolean v0, Lde/gdata/mobilesecurity/services/WatcherService;->J:Z

    return v0
.end method

.method private h(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1147
    const-string v1, "startActivity"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1174
    :cond_0
    :goto_0
    return v0

    .line 1149
    :cond_1
    const-string v1, "Starting"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1150
    const-string v1, "cat=[android.intent.category.LAUNCHER]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1151
    const-string v1, ".* act=(?:\\S+).MAIN .*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1152
    const-string v1, " act=android.settings.SETTINGS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1156
    :cond_2
    const-string v1, "START"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1157
    const-string v1, "act=android.intent.action.MAIN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1159
    const-string v1, "{intent.toShortString}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1161
    const-string v1, "cat=[android.intent.category.LAUNCHER]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/de.gdata.mobilesecurity.intents.Scan"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    const-string v1, "act=de.gdata.mobilesecurity.intents.Scan"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1165
    const-string v1, "act=android.settings.SETTINGS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1166
    const-string v1, "act=android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1170
    :cond_4
    const-string v1, "Displayed "

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1171
    const-string v1, "Trying to launch "

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1172
    const-string v1, "Start proc "

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, " for activity "

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1174
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method static synthetic i(Lde/gdata/mobilesecurity/services/WatcherService;)J
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->Q:J

    return-wide v0
.end method

.method static synthetic i(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lde/gdata/mobilesecurity/services/WatcherService;->R:Ljava/lang/String;

    return-object p1
.end method

.method private i(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1183
    const-string v0, ""

    .line 1185
    const-string v1, "cmp="

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1186
    const-string v0, " cmp="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1187
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1189
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1190
    :cond_0
    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1207
    :cond_1
    :goto_0
    const-string v1, "intent.toShortString"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "shortComponentName"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "intent.toShortString"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "shortComponentName"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1209
    :cond_2
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->getTaskOnTop(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Component recovery: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 1212
    if-nez v0, :cond_3

    const-string v0, ""

    .line 1215
    :cond_3
    return-object v0

    .line 1192
    :cond_4
    const-string v1, "Displayed activity "

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_5

    .line 1193
    const-string v0, "Displayed activity "

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x13

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1194
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1196
    :cond_5
    const-string v1, "Displayed "

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_7

    .line 1197
    const-string v0, "Displayed "

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1198
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1199
    :cond_6
    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1201
    :cond_7
    const-string v1, "Start proc "

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " for activity "

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1202
    const-string v0, "Displayed "

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1203
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1204
    :cond_8
    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method static synthetic i()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->i:Ljava/util/Vector;

    return-object v0
.end method

.method public static insertLogEntry(Landroid/content/Context;ILjava/lang/String;ZI)V
    .locals 7

    .prologue
    const/16 v6, 0x14

    const/16 v5, 0x12

    const/16 v4, 0x11

    const/16 v3, 0x15

    .line 1487
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 1490
    :try_start_0
    new-instance v1, Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/scan/LogEntry;-><init>(Landroid/content/Context;)V

    .line 1492
    invoke-virtual {v1, p1}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageID(I)V

    .line 1493
    invoke-virtual {v1, p2}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageExtra(Ljava/lang/String;)V

    .line 1494
    invoke-virtual {v1, p4}, Lde/gdata/mobilesecurity/scan/LogEntry;->setStatus(I)V

    .line 1495
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/scan/LogEntry;->setProfile(Ljava/lang/String;)V

    .line 1497
    if-eqz p3, :cond_0

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/scan/LogEntry;->setWarning()V

    .line 1499
    :cond_0
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardToddlerActive()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1500
    const-string v2, "Private"

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/scan/LogEntry;->setProfile(Ljava/lang/String;)V

    .line 1502
    if-eq p1, v6, :cond_1

    if-eq p1, v4, :cond_1

    if-eq p1, v5, :cond_1

    if-ne p1, v3, :cond_2

    .line 1504
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/scan/LogEntry;->setStatus(I)V

    .line 1516
    :cond_2
    :goto_0
    const/16 v2, 0x31

    if-ne p1, v2, :cond_6

    .line 1517
    invoke-static {p0, v1}, Lde/gdata/mobilesecurity/database/core/dao/Reports;->insertOrReplace(Landroid/content/Context;Lde/gdata/mobilesecurity/scan/LogEntry;)V

    .line 1523
    :goto_1
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardTeenagerActive()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xd

    if-ne p1, v0, :cond_3

    .line 1524
    const-string v0, "Private"

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/scan/LogEntry;->setProfile(Ljava/lang/String;)V

    .line 1526
    invoke-static {p0, v1}, Lde/gdata/mobilesecurity/database/core/dao/Reports;->insert(Landroid/content/Context;Lde/gdata/mobilesecurity/scan/LogEntry;)J

    .line 1531
    :cond_3
    :goto_2
    return-void

    .line 1506
    :cond_4
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardTeenagerActive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1507
    const-string v2, "Teenager"

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/scan/LogEntry;->setProfile(Ljava/lang/String;)V

    .line 1509
    if-eq p1, v6, :cond_5

    if-eq p1, v4, :cond_5

    if-eq p1, v5, :cond_5

    if-ne p1, v3, :cond_2

    .line 1511
    :cond_5
    const-string v2, "Private"

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/scan/LogEntry;->setProfile(Ljava/lang/String;)V

    .line 1512
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/scan/LogEntry;->setStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1528
    :catch_0
    move-exception v0

    .line 1529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inserting log entry for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 1518
    :cond_6
    if-ne p1, v3, :cond_7

    .line 1519
    :try_start_1
    invoke-static {p0, v1}, Lde/gdata/mobilesecurity/database/core/dao/Reports;->insertOrReplace(Landroid/content/Context;Lde/gdata/mobilesecurity/scan/LogEntry;)V

    goto :goto_1

    .line 1521
    :cond_7
    invoke-static {p0, v1}, Lde/gdata/mobilesecurity/database/core/dao/Reports;->insert(Landroid/content/Context;Lde/gdata/mobilesecurity/scan/LogEntry;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static isAccessibilityEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 2190
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 2192
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    .line 2195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 2197
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 2198
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2199
    :cond_1
    const/4 v0, 0x1

    .line 2203
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAppUnlocked(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1377
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 1379
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppProtectionActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1380
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1385
    :goto_0
    return-object v0

    .line 1382
    :cond_0
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->l:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    .line 1383
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1385
    :cond_1
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static isElapsedApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 927
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->O:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 928
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->N:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 929
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->N:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->O:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->isDebugMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    :goto_0
    int-to-long v6, v0

    div-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 932
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 929
    goto :goto_0

    .line 932
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static synthetic j(Lde/gdata/mobilesecurity/services/WatcherService;)J
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->aa:J

    return-wide v0
.end method

.method static synthetic j()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic j(Lde/gdata/mobilesecurity/services/WatcherService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/services/WatcherService;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->p:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic k(Lde/gdata/mobilesecurity/services/WatcherService;)Z
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->w()Z

    move-result v0

    return v0
.end method

.method static synthetic l()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->N:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic l(Lde/gdata/mobilesecurity/services/WatcherService;)Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->ad:Z

    return v0
.end method

.method public static loadProtectedAppList(Landroid/content/Context;Z)V
    .locals 20

    .prologue
    .line 1224
    const-string v2, "loadProtectedAppList"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1226
    new-instance v3, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 1228
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppDeniedByDefault()Z

    move-result v4

    sput-boolean v4, Lde/gdata/mobilesecurity/services/WatcherService;->J:Z

    .line 1229
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppProtectedByDefault()Z

    move-result v4

    sput-boolean v4, Lde/gdata/mobilesecurity/services/WatcherService;->K:Z

    .line 1231
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockConfig()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lde/gdata/mobilesecurity/services/WatcherService;->I:Ljava/lang/String;

    .line 1232
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT identifier, permissions, lockmode, hashcode, timeunlocked FROM protectedapps  WHERE configuration = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lde/gdata/mobilesecurity/services/WatcherService;->I:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1235
    sget-object v4, Lde/gdata/mobilesecurity/services/WatcherService;->O:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 1236
    sget-object v4, Lde/gdata/mobilesecurity/services/WatcherService;->h:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 1237
    sget-object v4, Lde/gdata/mobilesecurity/services/WatcherService;->i:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 1238
    sget-object v4, Lde/gdata/mobilesecurity/services/WatcherService;->j:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1239
    sget-object v4, Lde/gdata/mobilesecurity/services/WatcherService;->k:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1241
    if-eqz p1, :cond_0

    sget-object v4, Lde/gdata/mobilesecurity/services/WatcherService;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 1245
    if-eqz v5, :cond_18

    .line 1246
    const-string v2, "identifier"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1247
    const-string v2, "permissions"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1248
    const-string v2, "lockmode"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1249
    const-string v2, "hashcode"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 1250
    const-string v2, "timeunlocked"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1252
    :cond_1
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1253
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1254
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1255
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1256
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1257
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 1258
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 1260
    if-nez v4, :cond_2

    const-string v4, ""

    .line 1261
    :cond_2
    if-nez v2, :cond_a

    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 1262
    if-nez v3, :cond_b

    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 1263
    if-nez v11, :cond_c

    const/4 v2, -0x1

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 1264
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_d

    :cond_3
    const v2, 0x5f5e100

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 1266
    const-string v2, "/"

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_e

    const/4 v2, 0x0

    const-string v3, "/"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 1269
    :goto_5
    sget-object v2, Lde/gdata/mobilesecurity/services/WatcherService;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object v2, v4

    .line 1271
    :goto_6
    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-nez v15, :cond_4

    .line 1272
    sget-object v15, Lde/gdata/mobilesecurity/services/WatcherService;->k:Ljava/util/HashMap;

    invoke-virtual {v15, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10

    .line 1273
    sget-object v15, Lde/gdata/mobilesecurity/services/WatcherService;->k:Ljava/util/HashMap;

    new-instance v16, Ljava/util/LinkedList;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v11, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v16

    invoke-virtual {v15, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    :cond_4
    :goto_7
    sget-boolean v2, Lde/gdata/mobilesecurity/services/WatcherService;->K:Z

    if-eqz v2, :cond_5

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v11, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->UNLOCKED:I

    and-int/2addr v2, v11

    if-nez v2, :cond_6

    :cond_5
    sget-boolean v2, Lde/gdata/mobilesecurity/services/WatcherService;->K:Z

    if-nez v2, :cond_7

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v11, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->LOCKED:I

    and-int/2addr v2, v11

    if-eqz v2, :cond_7

    .line 1280
    :cond_6
    sget-object v2, Lde/gdata/mobilesecurity/services/WatcherService;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1281
    sget-object v2, Lde/gdata/mobilesecurity/services/WatcherService;->h:Ljava/util/Vector;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1282
    sget-object v2, Lde/gdata/mobilesecurity/services/WatcherService;->j:Ljava/util/HashMap;

    invoke-virtual {v2, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    :cond_7
    :goto_8
    sget-boolean v2, Lde/gdata/mobilesecurity/services/WatcherService;->J:Z

    if-eqz v2, :cond_8

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v11, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->GRANTED:I

    and-int/2addr v2, v11

    if-nez v2, :cond_9

    :cond_8
    sget-boolean v2, Lde/gdata/mobilesecurity/services/WatcherService;->J:Z

    if-nez v2, :cond_1

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v11, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->DENIED:I

    and-int/2addr v2, v11

    if-eqz v2, :cond_1

    .line 1292
    :cond_9
    sget-object v2, Lde/gdata/mobilesecurity/services/WatcherService;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1293
    sget-object v2, Lde/gdata/mobilesecurity/services/WatcherService;->i:Ljava/util/Vector;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1294
    sget-object v2, Lde/gdata/mobilesecurity/services/WatcherService;->j:Ljava/util/HashMap;

    invoke-virtual {v2, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    sget-boolean v2, Lde/gdata/mobilesecurity/services/WatcherService;->J:Z

    if-eqz v2, :cond_1

    sget-object v2, Lde/gdata/mobilesecurity/services/WatcherService;->O:Ljava/util/Hashtable;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v12, v3

    const-wide/16 v14, 0x3c

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1261
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto/16 :goto_1

    .line 1262
    :cond_b
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto/16 :goto_2

    .line 1263
    :cond_c
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto/16 :goto_3

    .line 1264
    :cond_d
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto/16 :goto_4

    :cond_e
    move-object v3, v4

    .line 1266
    goto/16 :goto_5

    :cond_f
    move-object v2, v3

    .line 1269
    goto/16 :goto_6

    .line 1275
    :cond_10
    sget-object v15, Lde/gdata/mobilesecurity/services/WatcherService;->k:Ljava/util/HashMap;

    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 1285
    :cond_11
    sget-object v2, Lde/gdata/mobilesecurity/services/WatcherService;->h:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1286
    sget-object v2, Lde/gdata/mobilesecurity/services/WatcherService;->j:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 1299
    :cond_12
    sget-object v2, Lde/gdata/mobilesecurity/services/WatcherService;->i:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1300
    sget-object v2, Lde/gdata/mobilesecurity/services/WatcherService;->j:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    sget-boolean v2, Lde/gdata/mobilesecurity/services/WatcherService;->J:Z

    if-eqz v2, :cond_1

    .line 1304
    sget-object v2, Lde/gdata/mobilesecurity/services/WatcherService;->O:Ljava/util/Hashtable;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1305
    sget-object v2, Lde/gdata/mobilesecurity/services/WatcherService;->O:Ljava/util/Hashtable;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v12, v4

    const-wide/16 v14, 0x3c

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1306
    :cond_13
    sget-object v2, Lde/gdata/mobilesecurity/services/WatcherService;->O:Ljava/util/Hashtable;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x3c

    mul-long v16, v16, v18

    const-wide/16 v18, 0x3e8

    mul-long v16, v16, v18

    cmp-long v2, v14, v16

    if-gez v2, :cond_1

    .line 1307
    sget-object v2, Lde/gdata/mobilesecurity/services/WatcherService;->O:Ljava/util/Hashtable;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v12, v4

    const-wide/16 v14, 0x3c

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1312
    :cond_14
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1314
    sget-object v2, Lde/gdata/mobilesecurity/services/WatcherService;->X:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1315
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1316
    sget-object v6, Lde/gdata/mobilesecurity/services/WatcherService;->i:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1317
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_17
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1318
    sget-object v5, Lde/gdata/mobilesecurity/services/WatcherService;->i:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    sget-object v5, Lde/gdata/mobilesecurity/services/WatcherService;->i:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1325
    :cond_18
    const-string v2, "loadProtectedAppList"

    invoke-static {v2}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 1326
    return-void
.end method

.method public static lockPhone(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 826
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 829
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 833
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 834
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 836
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 838
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 839
    return-void
.end method

.method public static declared-synchronized logArpLine(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1731
    const-class v0, Lde/gdata/mobilesecurity/services/WatcherService;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method static synthetic m(Lde/gdata/mobilesecurity/services/WatcherService;)Lde/gdata/mobilesecurity/services/m;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->ab:Lde/gdata/mobilesecurity/services/m;

    return-object v0
.end method

.method static synthetic m()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic n(Lde/gdata/mobilesecurity/services/WatcherService;)Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->Z:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic n()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->O:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic o(Lde/gdata/mobilesecurity/services/WatcherService;)Lde/gdata/mobilesecurity/services/m;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->ac:Lde/gdata/mobilesecurity/services/m;

    return-object v0
.end method

.method static synthetic o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->I:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lde/gdata/mobilesecurity/services/WatcherService;)Lde/gdata/mobilesecurity/secsrv/SecSrv;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->q:Lde/gdata/mobilesecurity/secsrv/SecSrv;

    return-object v0
.end method

.method static synthetic p()Z
    .locals 1

    .prologue
    .line 125
    sget-boolean v0, Lde/gdata/mobilesecurity/services/WatcherService;->K:Z

    return v0
.end method

.method static synthetic q(Lde/gdata/mobilesecurity/services/WatcherService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic q()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->h:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic r()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->o:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static readArpTable()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1539
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/net/arp"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 1540
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1541
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1544
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1545
    const-string v3, "IP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1546
    const-string v3, "[ ]+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1548
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x3

    aget-object v2, v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1555
    :catch_0
    move-exception v0

    .line 1556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t read ARP table: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 1559
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 1551
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic s()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->l:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static declared-synchronized sendArpLog(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 1738
    const-class v3, Lde/gdata/mobilesecurity/services/WatcherService;

    monitor-enter v3

    const/4 v2, 0x0

    .line 1739
    :try_start_0
    const-string v0, ""

    .line 1740
    new-instance v4, Ljava/lang/StringBuilder;

    const v0, 0x203a0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1741
    const-string v0, "Please enter an identifying name in the preferences. Otherwise, your phone number or device name will be used instead."

    .line 1744
    new-instance v5, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v5, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 1746
    invoke-virtual {v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getArpReportSender()Ljava/lang/String;

    move-result-object v1

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1747
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1748
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1750
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->getNormalizedPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setArpReportSender(Ljava/lang/String;)V

    .line 1751
    invoke-virtual {v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getArpReportSender()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setArpReportSender(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1796
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 1759
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lde/gdata/mobilesecurity/services/WatcherService;->ah:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".bak"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x1f9c

    invoke-direct {v1, v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1762
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1763
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1764
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1768
    :catch_0
    move-exception v0

    .line 1769
    :goto_2
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Backup file not present or not readable: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1771
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    move-object v2, v1

    .line 1776
    :goto_3
    :try_start_5
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v6, Lde/gdata/mobilesecurity/services/WatcherService;->ah:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x1f9c

    invoke-direct {v1, v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1779
    :goto_4
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1780
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1781
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 1789
    :catch_1
    move-exception v0

    .line 1790
    :goto_5
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Excpetion while reading logs: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1792
    if-eqz v1, :cond_0

    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 1793
    :catch_2
    move-exception v0

    goto/16 :goto_0

    .line 1766
    :cond_3
    :try_start_9
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v2, v1

    .line 1774
    goto :goto_3

    .line 1772
    :catch_3
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 1784
    :cond_4
    :try_start_a
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->ai:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ARP Logs from "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getArpReportSender()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v0, v2, v4}, Lde/gdata/mobilesecurity/util/EmailClient;->sendInThread(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    const-string v0, "Thank you! An email has been sent."

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 1738
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 1789
    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_5

    .line 1768
    :catch_5
    move-exception v0

    move-object v1, v2

    goto/16 :goto_2
.end method

.method public static declared-synchronized startSpoofChecker(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1600
    const-class v1, Lde/gdata/mobilesecurity/services/WatcherService;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->e(Landroid/content/Context;)V

    .line 1602
    sget-boolean v0, Lde/gdata/mobilesecurity/services/WatcherService;->M:Z

    if-nez v0, :cond_0

    .line 1603
    new-instance v0, Lde/gdata/mobilesecurity/services/k;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/services/k;-><init>(Landroid/content/Context;)V

    sput-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->x:Lde/gdata/mobilesecurity/services/k;

    .line 1605
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->x:Lde/gdata/mobilesecurity/services/k;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/services/k;->a()V

    .line 1606
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->x:Lde/gdata/mobilesecurity/services/k;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/services/k;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1608
    :cond_0
    monitor-exit v1

    return-void

    .line 1600
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static startTaskWatchDog()V
    .locals 2

    .prologue
    .line 1400
    sget-boolean v0, Lde/gdata/mobilesecurity/services/WatcherService;->c:Z

    if-nez v0, :cond_0

    .line 1401
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->watcherService:Lde/gdata/mobilesecurity/services/WatcherService;

    if-eqz v0, :cond_0

    .line 1402
    const/4 v0, 0x1

    sput-boolean v0, Lde/gdata/mobilesecurity/services/WatcherService;->c:Z

    .line 1404
    new-instance v0, Lde/gdata/mobilesecurity/services/p;

    sget-object v1, Lde/gdata/mobilesecurity/services/WatcherService;->watcherService:Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/services/p;-><init>(Lde/gdata/mobilesecurity/services/WatcherService;)V

    sput-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->v:Lde/gdata/mobilesecurity/services/p;

    .line 1405
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->v:Lde/gdata/mobilesecurity/services/p;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/services/p;->start()V

    .line 1408
    :cond_0
    return-void
.end method

.method public static declared-synchronized startUsageCount(Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V
    .locals 4

    .prologue
    .line 1567
    const-class v1, Lde/gdata/mobilesecurity/services/WatcherService;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardToddlerActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardTeenagerActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1568
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardOverallUsageTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1569
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lde/gdata/mobilesecurity/services/WatcherService;->T:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1572
    :cond_1
    monitor-exit v1

    return-void

    .line 1567
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized stopSpoofChecker()V
    .locals 2

    .prologue
    .line 1614
    const-class v1, Lde/gdata/mobilesecurity/services/WatcherService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->x:Lde/gdata/mobilesecurity/services/k;

    if-eqz v0, :cond_0

    .line 1615
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->x:Lde/gdata/mobilesecurity/services/k;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/services/k;->c()V

    .line 1616
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->x:Lde/gdata/mobilesecurity/services/k;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/services/k;->interrupt()V

    .line 1619
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lde/gdata/mobilesecurity/services/WatcherService;->M:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1620
    monitor-exit v1

    return-void

    .line 1614
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static stopTaskWatchDog()V
    .locals 1

    .prologue
    .line 1393
    const/4 v0, 0x0

    sput-boolean v0, Lde/gdata/mobilesecurity/services/WatcherService;->c:Z

    .line 1394
    return-void
.end method

.method public static declared-synchronized stopUsageCount(Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 1579
    const-class v1, Lde/gdata/mobilesecurity/services/WatcherService;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardToddlerActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardTeenagerActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1580
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardOverallUsageTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1581
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lde/gdata/mobilesecurity/services/WatcherService;->U:J

    .line 1583
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardOverallUsageTime()J

    move-result-wide v2

    cmp-long v0, v2, v6

    if-nez v0, :cond_1

    sget-wide v2, Lde/gdata/mobilesecurity/services/WatcherService;->U:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    sput-wide v2, Lde/gdata/mobilesecurity/services/WatcherService;->T:J

    .line 1585
    :cond_1
    sget-wide v2, Lde/gdata/mobilesecurity/services/WatcherService;->T:J

    cmp-long v0, v2, v6

    if-lez v0, :cond_2

    sget-wide v2, Lde/gdata/mobilesecurity/services/WatcherService;->U:J

    sget-wide v4, Lde/gdata/mobilesecurity/services/WatcherService;->T:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    .line 1587
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardOverallUsageTime()J

    move-result-wide v2

    .line 1588
    sget-wide v4, Lde/gdata/mobilesecurity/services/WatcherService;->U:J

    sget-wide v6, Lde/gdata/mobilesecurity/services/WatcherService;->T:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 1589
    invoke-virtual {p0, v2, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardOverallUsageTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1593
    :cond_2
    monitor-exit v1

    return-void

    .line 1579
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic t()Ljava/util/List;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->W:Ljava/util/List;

    return-object v0
.end method

.method private u()V
    .locals 4

    .prologue
    .line 478
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 481
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 483
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 484
    sget-object v2, Lde/gdata/mobilesecurity/services/WatcherService;->o:Ljava/util/ArrayList;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    sget-object v2, Lde/gdata/mobilesecurity/services/WatcherService;->n:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 487
    :cond_0
    return-void
.end method

.method private v()V
    .locals 3

    .prologue
    .line 493
    invoke-direct {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->u()V

    .line 495
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->o:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.activities.antiphishing.ProtectBrowser"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->o:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.activities.applock.DenyAppAccess"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->o:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.activities.applock.ProtectApp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->o:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.activities.callfilter.BlockCall"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->o:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.intents.ProfileSelector"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->o:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.intents.TelemetryEula"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->o:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.intents.MalwareToRemoveList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->o:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.activities.kidsguard.KidsGuardHome"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->o:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.activities.usagecontrol.GDataLockscreenActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->n:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->n:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.activities.antiphishing.ProtectBrowser"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->n:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.activities.applock.DenyAppAccess"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->n:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.activities.applock.ProtectApp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->n:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.activities.callfilter.BlockCall"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->n:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.intents.ProfileSelector"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->n:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.intents.TelemetryEula"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->n:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.intents.MalwareToRemoveList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->n:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.activities.kidsguard.KidsGuardHome"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->n:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.activities.usagecontrol.GDataLockscreenActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->p:Ljava/util/ArrayList;

    const-string v1, "android/com.android.internal.app.ResolverActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->p:Ljava/util/ArrayList;

    const-string v1, "android/com.android.internal.app.ResolverGuideActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->p:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.activities.applock.DenyAppAccess"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->p:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.activities.kidsguard.KidsGuardHome"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->p:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.activities.kidsguard.KidsPreferences"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->p:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.activities.kidsguard.MediaPlaybackActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->p:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.activities.usagecontrol.LockingDeviceActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->p:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.activities.usagecontrol.GDataLockscreenActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    .line 526
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->n:Ljava/util/ArrayList;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->n:Ljava/util/ArrayList;

    const-string v1, "com.google.android.inputmethod.latin"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->p:Ljava/util/ArrayList;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->p:Ljava/util/ArrayList;

    const-string v1, "com.google.android.inputmethod.latin"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    :cond_0
    return-void
.end method

.method private w()Z
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 710
    invoke-static {}, Lde/gdata/mobilesecurity/util/MyUtil;->getCurrentDay()I

    move-result v5

    .line 715
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->lockedLocationsHaveChanged()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->ae:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 716
    :cond_0
    invoke-static {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->loadLockedLocations(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->ae:Ljava/util/ArrayList;

    .line 717
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setLockedLocationsChanged(Z)Z

    .line 719
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->ae:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    .line 720
    if-nez v1, :cond_6

    .line 721
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getIsActivated()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 722
    invoke-virtual {v0, v5}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->isActiveToday(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 723
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->isActiveRightNow()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 724
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->hasLocation()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 726
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lde/gdata/mobilesecurity/util/MyUtil;->locationServicesEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 727
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Locked phone: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " by missing permission"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 728
    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->a(Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 729
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->startLockingPhoneAnimation(Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;)V

    move v0, v4

    move v1, v4

    :goto_1
    move v3, v1

    move v1, v0

    .line 746
    goto :goto_0

    .line 734
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Locked phone: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " by schedule "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getLastLC(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 737
    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->a(Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 738
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->startLockingPhoneAnimation(Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;)V

    move v0, v4

    move v1, v3

    .line 739
    goto :goto_1

    .line 751
    :cond_3
    if-nez v1, :cond_4

    if-nez v3, :cond_4

    .line 752
    invoke-static {p0, v4}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->unlockThePhone(Landroid/content/Context;Z)V

    .line 754
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is locked "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " locationNeedsTobe "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 755
    if-eqz v3, :cond_5

    if-nez v1, :cond_5

    :goto_2
    return v4

    :cond_5
    move v4, v2

    goto :goto_2

    :cond_6
    move v0, v1

    move v1, v3

    goto/16 :goto_1

    :cond_7
    move v0, v1

    move v1, v4

    goto/16 :goto_1
.end method

.method private x()V
    .locals 2

    .prologue
    .line 894
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 895
    const-class v1, Lde/gdata/mobilesecurity/activities/kidsguard/MediaPlaybackActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 896
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 897
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->startActivity(Landroid/content/Intent;)V

    .line 898
    return-void
.end method

.method private y()V
    .locals 0

    .prologue
    .line 902
    return-void
.end method

.method private z()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1033
    const-string v0, "Starting uninstall protection"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 1035
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isUninstallProtectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    const-string v0, ""

    invoke-static {p0, v0, v6}, Lde/gdata/mobilesecurity/receiver/SMSReceiver;->lockPhone(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1039
    :cond_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1040
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 1041
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1043
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1044
    const-class v0, Lde/gdata/mobilesecurity/activities/uninstall/ProtectUninstall;

    invoke-virtual {v3, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1045
    const/high16 v0, 0x10000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1047
    if-lez v2, :cond_1

    const-string v4, "uninstallTask"

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1048
    :cond_1
    if-le v2, v5, :cond_2

    .line 1049
    const-string v2, "com.android.launcher2.Launcher"

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1050
    const-string v2, "returnToTask"

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1052
    :cond_2
    invoke-virtual {p0, v3}, Lde/gdata/mobilesecurity/services/WatcherService;->startActivity(Landroid/content/Intent;)V

    .line 1054
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppProtectionActivated()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1055
    sget-boolean v0, Lde/gdata/mobilesecurity/services/WatcherService;->J:Z

    if-eqz v0, :cond_3

    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->i:Ljava/util/Vector;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    sget-boolean v0, Lde/gdata/mobilesecurity/services/WatcherService;->J:Z

    if-nez v0, :cond_6

    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->i:Ljava/util/Vector;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1057
    :cond_4
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->b(Ljava/lang/String;)V

    .line 1068
    :cond_5
    :goto_0
    return-void

    .line 1059
    :cond_6
    sget-boolean v0, Lde/gdata/mobilesecurity/services/WatcherService;->K:Z

    if-eqz v0, :cond_7

    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->h:Ljava/util/Vector;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    sget-boolean v0, Lde/gdata/mobilesecurity/services/WatcherService;->K:Z

    if-nez v0, :cond_5

    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->h:Ljava/util/Vector;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1061
    :cond_8
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1062
    if-nez v0, :cond_9

    const-wide/16 v0, -0x1

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1064
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 1065
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 1062
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized checkLocationForRestriction(FF)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    .line 763
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkLocationForRestriction "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - lg "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 764
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->ae:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 765
    invoke-static {}, Lde/gdata/mobilesecurity/util/MyUtil;->getCurrentDay()I

    move-result v3

    .line 766
    const/4 v2, 0x0

    .line 767
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->ae:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    .line 768
    if-nez v2, :cond_2

    .line 769
    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->isActiveToday(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 770
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->isActiveRightNow()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 771
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->hasLocation()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 772
    iget-object v5, p0, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMockLocationAllowed()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->locationCouldBeSpoofed(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 774
    const v5, 0x7f0d039c

    invoke-virtual {p0, v5}, Lde/gdata/mobilesecurity/services/WatcherService;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 776
    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->a(Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 777
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Locked: Fake "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 779
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->startLockingPhoneAnimation(Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;)V

    move v0, v1

    :goto_1
    move v2, v0

    .line 805
    goto :goto_0

    .line 782
    :cond_0
    invoke-virtual {v0, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getmLocation(Landroid/content/Context;)Lde/gdata/mobilesecurity/activities/filter/LocationBean;

    move-result-object v5

    .line 783
    if-eqz v5, :cond_2

    .line 784
    invoke-virtual {v5}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->getmLatitude()D

    move-result-wide v6

    double-to-float v6, v6

    .line 785
    invoke-virtual {v5}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->getmLongitude()D

    move-result-wide v8

    double-to-float v5, v8

    .line 786
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8, v6, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v7, v8}, Lde/gdata/mobilesecurity/util/MyUtil;->distanceBetweenTwoPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v5

    .line 788
    invoke-virtual {v0, p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getmLocation(Landroid/content/Context;)Lde/gdata/mobilesecurity/activities/filter/LocationBean;

    move-result-object v6

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->getmRadius()I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    int-to-float v6, v6

    cmpg-float v6, v5, v6

    if-gez v6, :cond_1

    .line 789
    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->a(Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 790
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Locked: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->startLockingPhoneAnimation(Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;)V

    move v0, v1

    goto :goto_1

    .line 794
    :cond_1
    sget-object v5, Lde/gdata/mobilesecurity/services/WatcherService;->currentLockedLocation:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getId()I

    move-result v0

    sget-object v5, Lde/gdata/mobilesecurity/services/WatcherService;->currentLockedLocation:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getId()I

    move-result v5

    if-ne v0, v5, :cond_2

    .line 796
    const-string v0, "UnLocked: "

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 797
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/GDataLockscreenActivity;->unlockThePhone(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    move v0, v2

    goto :goto_1

    .line 807
    :cond_3
    monitor-exit p0

    return-void

    .line 763
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public doesLockRightNow(Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;)Z
    .locals 3

    .prologue
    .line 696
    const/4 v0, 0x0

    .line 697
    invoke-static {}, Lde/gdata/mobilesecurity/util/MyUtil;->getCurrentDay()I

    move-result v1

    .line 698
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getIsActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 699
    invoke-virtual {p1, v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->isActiveToday(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 700
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->isActiveRightNow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 701
    const/4 v0, 0x1

    .line 705
    :cond_0
    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 589
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 590
    const-string v0, "WatcherService starting ..."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->copyAssets(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lde/gdata/mobilesecurity/services/WatcherService;->localFilesAvailable:Z

    .line 595
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/receiver/ScreenReceiver;->registerScreenReceiver(Landroid/content/Context;)V

    .line 599
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 600
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 601
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 602
    new-instance v1, Lde/gdata/mobilesecurity/services/h;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/services/h;-><init>(Lde/gdata/mobilesecurity/services/WatcherService;)V

    invoke-virtual {p0, v1, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->b:Z

    .line 614
    new-instance v0, Lde/gdata/mobilesecurity/secsrv/SecSrv;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/secsrv/SecSrv;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->q:Lde/gdata/mobilesecurity/secsrv/SecSrv;

    .line 616
    invoke-direct {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->v()V

    .line 618
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->m:Ljava/util/ArrayList;

    const-string v1, "android/com.android.internal.app.ResolverActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->m:Ljava/util/ArrayList;

    const-string v1, "android/com.android.internal.app.ResolverGuideActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->m:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.activities.applock.DenyAppAccess"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->m:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.activities.applock.ProtectApp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->m:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.activities.callfilter.BlockCall"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->m:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.activities.antiphishing.ProtectBrowser"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->m:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.activities.kidsguard.KidsGuardHome"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->m:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.activities.kidsguard.KidsPreferences"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->m:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.activities.usagecontrol.LockingDeviceActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->m:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.activities.usagecontrol.GDataLockscreenActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->m:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.activities.kidsguard.MediaPlaybackActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->m:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.intents.ProfileSelector"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->m:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.intents.MalwareToRemoveList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->m:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.intents.TelemetryEula"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 636
    new-instance v0, Lde/gdata/mobilesecurity/services/i;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/services/i;-><init>(Lde/gdata/mobilesecurity/services/WatcherService;)V

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->setProfileProvider(Lde/gdata/mobilesecurity/activities/logs/LogFragment$ProfileProvider;)V

    .line 643
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->ag:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "de.gdata.mobilesecurity.DISPLAY_MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/services/WatcherService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 645
    new-instance v0, Lde/gdata/mobilesecurity/receiver/HeadsetStateReceiver;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/receiver/HeadsetStateReceiver;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->af:Lde/gdata/mobilesecurity/receiver/HeadsetStateReceiver;

    .line 646
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->af:Lde/gdata/mobilesecurity/receiver/HeadsetStateReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/services/WatcherService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 648
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getGcmSenderId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 649
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getGcmRegistrationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    new-instance v0, Lde/gdata/mobilesecurity/util/GcmUtilities;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/util/GcmUtilities;-><init>()V

    .line 651
    invoke-virtual {v0, p0}, Lde/gdata/mobilesecurity/util/GcmUtilities;->register(Landroid/content/Context;)V

    .line 654
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMMSEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 655
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/mms/ManagementServerService;->scheduleUpdate(Landroid/content/Context;)V

    .line 657
    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/webportal/android/WebPortalSyncService;->startSync(Landroid/content/Context;)V

    .line 659
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v3}, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration;->loadLists(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 661
    invoke-direct {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->A()V

    .line 663
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->isWebServerEnabled(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lde/gdata/mobilesecurity/services/WatcherService;->L:Z

    .line 665
    sget-boolean v0, Lde/gdata/mobilesecurity/services/WatcherService;->L:Z

    if-eqz v0, :cond_2

    new-instance v0, Lde/gdata/mobilesecurity/activities/debug/WebServer;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x22b8

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/activities/debug/WebServer;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/debug/WebServer;->start()V

    .line 666
    :cond_2
    return-void

    .line 609
    :catch_0
    move-exception v0

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering PackageReceiver failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 843
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 846
    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->w:Lde/gdata/mobilesecurity/services/u;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/services/u;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->ag:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 853
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/services/WatcherService;->B:Lde/gdata/mobilesecurity/services/v;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 854
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/services/WatcherService;->C:Lde/gdata/mobilesecurity/services/v;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 855
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/services/WatcherService;->D:Lde/gdata/mobilesecurity/services/v;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 856
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/services/WatcherService;->E:Lde/gdata/mobilesecurity/services/v;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 857
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/services/WatcherService;->F:Lde/gdata/mobilesecurity/services/v;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 859
    sget-object v0, Lde/gdata/mobilesecurity/services/WatcherService;->A:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 861
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/services/WatcherService;->G:Lde/gdata/mobilesecurity/services/n;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 863
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->af:Lde/gdata/mobilesecurity/receiver/HeadsetStateReceiver;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 865
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->b:Z

    .line 866
    const-string v0, "WatcherService stoppping ..."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 867
    return-void

    .line 847
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 459
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 461
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->isDebugMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->isWebServerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->setDebugFlag(Z)V

    .line 463
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_3

    .line 464
    invoke-static {}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->getPersistentNotification()Landroid/app/Notification;

    move-result-object v0

    .line 465
    if-eqz v0, :cond_2

    .line 466
    const v1, 0x65c7b

    invoke-virtual {p0, v1, v0}, Lde/gdata/mobilesecurity/services/WatcherService;->startForeground(ILandroid/app/Notification;)V

    .line 471
    :cond_2
    :goto_0
    return v2

    .line 468
    :cond_3
    const v0, 0x87867

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/services/WatcherService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public startLockingPhoneAnimation(Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;)V
    .locals 2

    .prologue
    .line 811
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isPhoneLocked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 812
    const-string v0, "startLockingPhoneAnimation"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 813
    sput-object p1, Lde/gdata/mobilesecurity/services/WatcherService;->currentLockedLocation:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    .line 814
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/WatcherService;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setPhoneLocked(Z)V

    .line 815
    invoke-static {p0}, Lde/gdata/mobilesecurity/services/WatcherService;->lockPhone(Landroid/content/Context;)V

    .line 822
    :cond_0
    :goto_0
    return-void

    .line 817
    :cond_1
    if-eqz p1, :cond_0

    .line 818
    sput-object p1, Lde/gdata/mobilesecurity/services/WatcherService;->currentLockedLocation:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    goto :goto_0
.end method
