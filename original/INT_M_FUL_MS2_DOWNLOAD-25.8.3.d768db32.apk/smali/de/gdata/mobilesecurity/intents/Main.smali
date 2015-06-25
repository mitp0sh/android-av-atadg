.class public Lde/gdata/mobilesecurity/intents/Main;
.super Lde/gdata/mobilesecurity/intents/GdFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;
.implements Lde/gdata/mobilesecurity/util/EulaListener;


# static fields
.field public static final ACTION_FINISH_MAIN:Ljava/lang/String; = "FINISH_MAIN"

.field public static final ANTITHEFT_PAGE:Ljava/lang/String; = "ANTITHEFT_PAGE"

.field public static final EXTRA_SPLASH_TIME_SEC:Ljava/lang/String; = "SPLASH_TIME"

.field public static final MENUANTITHEFT:I = 0x4

.field public static final MENUBLOCKED:I = 0x9

.field public static final MENUBROWSERSETTINGS:I = 0xc

.field public static final MENUFILTERIN:I = 0xf

.field public static final MENUGUARDDONE:I = 0x13

.field public static final MENUKIDSGUARD:I = 0xa

.field public static final MENUPANIC:I = 0xb

.field public static final MENUPERMISSIONS:I = 0x7

.field public static final MENUPHISHING:I = 0x5

.field public static final MENUPRIVACY:I = 0x10

.field public static final MENUPROTECTED:I = 0x8

.field public static final MENUSCAN:I = 0x3

.field public static final MENUSECURITYHUB:I = 0x1

.field public static final MENUSETTINGS:I = 0x12

.field public static final MENUUPDATES:I = 0x2

.field public static final MENUUSAGECONTROL:I = 0xd

.field public static final MENU_ITEM:Ljava/lang/String; = "MENU_ITEM"

.field public static final MENU_ITEM_ARGS:Ljava/lang/String; = "MENU_ITEM_ARGS"

.field public static final OPEN_NAVIGATION_DRAWER:Ljava/lang/String; = "openDrawer"

.field public static final RECEIVE_PROFILE_CHANGED:Ljava/lang/String; = "PROFILE_CHANGED"

.field public static final RECEIVE_SHOW_PROGRESS:Ljava/lang/String; = "RECEIVE_SHOW_PROGRESS"

.field public static final SELECT_ITEM:Ljava/lang/String; = "selectItem"

.field public static final SELECT_MENU_ITEM:Ljava/lang/String; = "SELECT_MENU_ITEM"

.field private static Y:J

.field private static ab:Z

.field public static activeItem:I

.field private static d:[I

.field private static e:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static f:[I

.field private static g:[Ljava/lang/Boolean;

.field private static h:[I

.field private static i:[I

.field private static final w:[B


# instance fields
.field private A:Landroid/support/v4/app/DialogFragment;

.field private B:Landroid/support/v4/app/DialogFragment;

.field private C:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService$UpdateStatusReceiver;

.field private D:Lde/gdata/mobilesecurity/intents/ah;

.field private E:Lcom/google/android/vending/licensing/LicenseChecker;

.field private F:Landroid/content/BroadcastReceiver;

.field private G:Landroid/content/BroadcastReceiver;

.field private H:Landroid/content/BroadcastReceiver;

.field private I:Landroid/content/BroadcastReceiver;

.field private J:Landroid/os/Bundle;

.field private K:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private L:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private M:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private N:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private O:Ljava/lang/Integer;

.field private P:Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;

.field private Q:Landroid/support/v4/widget/DrawerLayout;

.field private R:Landroid/widget/ListView;

.field private S:Landroid/support/v4/app/ActionBarDrawerToggle;

.field private T:I

.field private U:Landroid/support/v4/app/DialogFragment;

.field private V:Landroid/support/v4/app/DialogFragment;

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Z:Z

.field a:Z

.field private aa:Z

.field private b:Z

.field private c:Landroid/view/View;

.field private j:[I

.field private k:[I

.field private l:[I

.field private m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private p:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:[I

.field private s:Landroid/support/v4/app/Fragment;

.field private t:Lde/gdata/mobilesecurity/util/BasePreferences;

.field private u:Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;

.field private v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private x:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private y:Landroid/app/ProgressDialog;

.field private z:Landroid/support/v4/app/DialogFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/16 v5, 0x14

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 161
    sput v4, Lde/gdata/mobilesecurity/intents/Main;->activeItem:I

    .line 199
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lde/gdata/mobilesecurity/intents/Main;->d:[I

    .line 202
    new-array v0, v5, [Ljava/lang/Class;

    aput-object v6, v0, v3

    const-class v1, Lde/gdata/mobilesecurity/activities/logs/LogFragment;

    aput-object v1, v0, v4

    aput-object v6, v0, v7

    const/4 v1, 0x3

    const-class v2, Lde/gdata/mobilesecurity/fragments/ScanFragment;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lde/gdata/mobilesecurity/activities/antiphishing/PhishingFragment;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v6, v0, v1

    const/4 v1, 0x7

    const-class v2, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lde/gdata/mobilesecurity/activities/kidsguard/BrowserManageModesFragment;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    aput-object v6, v0, v1

    const/16 v1, 0xf

    const-class v2, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-class v2, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    aput-object v6, v0, v1

    const/16 v1, 0x12

    const-class v2, Lde/gdata/mobilesecurity/intents/Preferences;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    aput-object v6, v0, v1

    sput-object v0, Lde/gdata/mobilesecurity/intents/Main;->e:[Ljava/lang/Class;

    .line 209
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lde/gdata/mobilesecurity/intents/Main;->f:[I

    .line 217
    new-array v0, v5, [Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lde/gdata/mobilesecurity/intents/Main;->g:[Ljava/lang/Boolean;

    .line 220
    new-array v0, v5, [I

    fill-array-data v0, :array_2

    sput-object v0, Lde/gdata/mobilesecurity/intents/Main;->h:[I

    .line 227
    new-array v0, v5, [I

    fill-array-data v0, :array_3

    sput-object v0, Lde/gdata/mobilesecurity/intents/Main;->i:[I

    .line 266
    new-array v0, v5, [B

    fill-array-data v0, :array_4

    sput-object v0, Lde/gdata/mobilesecurity/intents/Main;->w:[B

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lde/gdata/mobilesecurity/intents/Main;->Y:J

    .line 342
    sput-boolean v3, Lde/gdata/mobilesecurity/intents/Main;->ab:Z

    return-void

    .line 199
    :array_0
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x1
        0x0
        0x0
    .end array-data

    .line 209
    :array_1
    .array-data 4
        0x0
        0x7f0200f6
        0x7f0200df
        0x7f020100
        0x7f0200e9
        0x7f0200ea
        0x0
        0x7f0200e3
        0x7f0200f4
        0x7f0200e0
        0x7f02007b
        0x7f0200ed
        0x7f0200e4
        0x7f0201a2
        0x0
        0x7f0200e8
        0x7f0200eb
        0x0
        0x7f0200e7
        0x7f020070
    .end array-data

    .line 220
    :array_2
    .array-data 4
        0x0
        0x7f0200f6
        0x7f0200df
        0x7f020100
        0x7f0200e9
        0x7f0200ea
        0x0
        0x7f0200e3
        0x7f0200f4
        0x7f0200e0
        0x7f02007b
        0x7f0200ed
        0x7f0200e4
        0x7f0201a2
        0x0
        0x7f0200e8
        0x7f0200eb
        0x0
        0x7f0200e7
        0x7f020070
    .end array-data

    .line 227
    :array_3
    .array-data 4
        0x7f0d038a
        0x7f0d038b
        0x7f0d0094
        0x7f0d036f
        0x7f0d037a
        0x7f0d00a2
        0x7f0d037c
        0x7f0d036a
        0x7f0d037b
        0x7f0d0110
        0x7f0d0386
        0x7f0d0389
        0x7f0d0387
        0x7f0d031e
        0x7f0d037d
        0x7f0d037f
        0x7f0d0366
        0x7f0d0388
        0x7f0d038c
        0x7f0d0383
    .end array-data

    .line 266
    :array_4
    .array-data 1
        0x69t
        0x6t
        -0x12t
        0x66t
        -0x1bt
        0x6at
        0x49t
        0x50t
        -0x68t
        0x42t
        0x29t
        0x60t
        0x68t
        0x6t
        0x69t
        0x2ft
        -0x25t
        0x50t
        -0xet
        -0x71t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v1, 0x14

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 158
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;-><init>()V

    .line 162
    iput-boolean v3, p0, Lde/gdata/mobilesecurity/intents/Main;->b:Z

    .line 163
    iput-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->c:Landroid/view/View;

    .line 235
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->j:[I

    .line 241
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->k:[I

    .line 247
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->l:[I

    .line 253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->m:Ljava/util/HashMap;

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->n:Ljava/util/ArrayList;

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->o:Ljava/util/ArrayList;

    .line 256
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->p:Landroid/util/SparseArray;

    .line 257
    iput v3, p0, Lde/gdata/mobilesecurity/intents/Main;->q:I

    .line 258
    iput-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->r:[I

    .line 262
    iput-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    .line 263
    iput-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->u:Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;

    .line 264
    iput-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 270
    iput-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->x:Ljava/lang/Class;

    .line 271
    iput-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->y:Landroid/app/ProgressDialog;

    .line 273
    iput-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->z:Landroid/support/v4/app/DialogFragment;

    .line 274
    iput-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->A:Landroid/support/v4/app/DialogFragment;

    .line 275
    iput-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->B:Landroid/support/v4/app/DialogFragment;

    .line 277
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService$UpdateStatusReceiver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService$UpdateStatusReceiver;-><init>(Ljava/lang/String;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->C:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService$UpdateStatusReceiver;

    .line 281
    iput-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->E:Lcom/google/android/vending/licensing/LicenseChecker;

    .line 282
    iput-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->F:Landroid/content/BroadcastReceiver;

    .line 283
    iput-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->G:Landroid/content/BroadcastReceiver;

    .line 284
    iput-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->H:Landroid/content/BroadcastReceiver;

    .line 285
    iput-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->I:Landroid/content/BroadcastReceiver;

    .line 307
    iput-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->J:Landroid/os/Bundle;

    .line 309
    iput-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->K:Landroid/widget/ArrayAdapter;

    .line 310
    iput-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->L:Ljava/util/ArrayList;

    .line 311
    iput-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->M:Ljava/util/ArrayList;

    .line 312
    iput-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->N:Ljava/util/ArrayList;

    .line 313
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->O:Ljava/lang/Integer;

    .line 320
    iput-boolean v3, p0, Lde/gdata/mobilesecurity/intents/Main;->a:Z

    .line 326
    iput-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->U:Landroid/support/v4/app/DialogFragment;

    .line 327
    iput-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->V:Landroid/support/v4/app/DialogFragment;

    .line 329
    const-string v0, "gdata-drei"

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->W:Ljava/lang/String;

    .line 330
    const-string v0, "gdata-bus"

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->X:Ljava/lang/String;

    .line 340
    iput-boolean v3, p0, Lde/gdata/mobilesecurity/intents/Main;->Z:Z

    .line 341
    iput-boolean v3, p0, Lde/gdata/mobilesecurity/intents/Main;->aa:Z

    .line 2790
    return-void

    .line 235
    :array_0
    .array-data 4
        0x800000
        0x800000
        0x0
        0x1
        0x2
        0x4
        0x800000
        0x8
        0x20
        0x10
        0x100
        0x1000
        0x400
        0x200
        0x800000
        0x40
        0x80
        0x800000
        0x800
        0x800000
    .end array-data

    .line 241
    :array_1
    .array-data 4
        0x800000
        0x800000
        0x0
        0x1
        0x0
        0x4
        0x800000
        0x8
        0x20
        0x10
        0x100
        0x1000
        0x400
        0x200
        0x800000
        0x40
        0x0
        0x800000
        0x800
        0x800000
    .end array-data

    .line 247
    :array_2
    .array-data 4
        0x800000
        0x800000
        0x0
        0x1
        0x2
        0x4
        0x800000
        0x8
        0x20
        0x10
        0x0
        0x0
        0x400
        0x200
        0x800000
        0x40
        0x80
        0x800000
        0x800
        0x800000
    .end array-data
.end method

.method private a(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 2101
    new-instance v0, Lde/gdata/mobilesecurity/intents/t;

    invoke-direct {v0, p0, p1}, Lde/gdata/mobilesecurity/intents/t;-><init>(Lde/gdata/mobilesecurity/intents/Main;Landroid/view/MenuItem;)V

    return-object v0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/intents/Main;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/Main;->c:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/intents/Main;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    return-object v0
.end method

.method private a(Landroid/content/IntentFilter;)V
    .locals 1

    .prologue
    .line 1256
    new-instance v0, Lde/gdata/mobilesecurity/intents/ad;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/intents/ad;-><init>(Lde/gdata/mobilesecurity/intents/Main;)V

    .line 1262
    invoke-virtual {p0, v0, p1}, Lde/gdata/mobilesecurity/intents/Main;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1263
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1264
    return-void
.end method

.method private a(Landroid/content/res/Configuration;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 416
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v2, 0xf

    .line 417
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    move v2, v0

    .line 419
    :goto_0
    if-eqz v2, :cond_0

    const/4 v2, 0x3

    if-eq v3, v2, :cond_1

    :cond_0
    const/4 v2, 0x4

    if-ne v3, v2, :cond_3

    :cond_1
    :goto_1
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/intents/Main;->a:Z

    .line 421
    return-void

    :cond_2
    move v2, v1

    .line 417
    goto :goto_0

    :cond_3
    move v0, v1

    .line 419
    goto :goto_1
.end method

.method private a(Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 1674
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1675
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1676
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1677
    const-class v2, Lde/gdata/mobilesecurity/intents/UssdFilter;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1678
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x10000000

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1679
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1681
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->finish()V

    .line 1682
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const v9, 0x7f0b02a8

    const/4 v7, 0x0

    const/16 v2, 0xff

    const/4 v8, 0x1

    .line 1015
    const v0, 0x7f030072

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->setContentView(I)V

    .line 1017
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->a(Landroid/content/res/Configuration;)V

    .line 1019
    new-instance v0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;

    invoke-direct {v0, p0, p0}, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;-><init>(Lde/gdata/mobilesecurity/intents/Main;Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->P:Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;

    .line 1021
    const v0, 0x7f0b02a7

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->Q:Landroid/support/v4/widget/DrawerLayout;

    .line 1022
    const v0, 0x7f0b02a9

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->R:Landroid/widget/ListView;

    .line 1023
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->Q:Landroid/support/v4/widget/DrawerLayout;

    const/16 v1, 0xc8

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setScrimColor(I)V

    .line 1024
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->R:Landroid/widget/ListView;

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->P:Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1025
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->R:Landroid/widget/ListView;

    new-instance v1, Lde/gdata/mobilesecurity/intents/ag;

    invoke-direct {v1, p0, v7}, Lde/gdata/mobilesecurity/intents/ag;-><init>(Lde/gdata/mobilesecurity/intents/Main;Lde/gdata/mobilesecurity/intents/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1027
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1028
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 1030
    new-instance v0, Lde/gdata/mobilesecurity/intents/ab;

    iget-object v3, p0, Lde/gdata/mobilesecurity/intents/Main;->Q:Landroid/support/v4/widget/DrawerLayout;

    const v4, 0x7f02011f

    const v5, 0x7f0d0250

    const v6, 0x7f0d024f

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lde/gdata/mobilesecurity/intents/ab;-><init>(Lde/gdata/mobilesecurity/intents/Main;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->S:Landroid/support/v4/app/ActionBarDrawerToggle;

    .line 1043
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/intents/Main;->a:Z

    if-eqz v0, :cond_0

    .line 1044
    const v0, 0x7f0b02aa

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 1045
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->P:Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1047
    new-instance v1, Lde/gdata/mobilesecurity/intents/ag;

    invoke-direct {v1, p0, v7}, Lde/gdata/mobilesecurity/intents/ag;-><init>(Lde/gdata/mobilesecurity/intents/Main;Lde/gdata/mobilesecurity/intents/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1050
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1052
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "contentFragment"

    invoke-virtual {v0, p1, v2}, Landroid/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->s:Landroid/support/v4/app/Fragment;

    .line 1055
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->s:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_3

    .line 1056
    sget v0, Lde/gdata/mobilesecurity/intents/Main;->activeItem:I

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->getActiveFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->s:Landroid/support/v4/app/Fragment;

    .line 1057
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->s:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_1

    new-instance v0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->s:Landroid/support/v4/app/Fragment;

    .line 1059
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1060
    const-string v2, "contentFrame"

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1062
    sget v2, Lde/gdata/mobilesecurity/intents/Main;->activeItem:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_2

    const-string v2, "DIRECTION"

    sget v3, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration;->DIRECTION_IN:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1064
    :cond_2
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->s:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1066
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->s:Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->s:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v9, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1071
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->R:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1072
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/Main;->f()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x42200000    # 40.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1073
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->R:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1075
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1076
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lde/gdata/mobilesecurity/intents/Main;->T:I

    .line 1079
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/intents/Main;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->Q:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->R:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 1081
    :cond_4
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->setNavigationMode()V

    .line 1082
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/Trial;->isTrialOutOfTrialPeriod()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1083
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/Main;->l()V

    .line 1087
    :goto_1
    return-void

    :cond_5
    move-object v0, v7

    .line 1052
    goto/16 :goto_0

    .line 1085
    :cond_6
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v8}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setBitDefenderEnabled(Z)V

    goto :goto_1
.end method

.method private a(Landroid/support/v7/app/ActionBarActivity;Landroid/support/v4/app/Fragment;)V
    .locals 3

    .prologue
    .line 1892
    invoke-virtual {p1}, Landroid/support/v7/app/ActionBarActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 1894
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1895
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0b02a8

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1898
    iput-object p2, p0, Lde/gdata/mobilesecurity/intents/Main;->s:Landroid/support/v4/app/Fragment;

    .line 1900
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 1909
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 1910
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 1911
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1912
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 1913
    return-void
.end method

.method private a(Landroid/view/View;ILandroid/os/Bundle;)V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1719
    sput-boolean v2, Lde/gdata/mobilesecurity/intents/Main;->ab:Z

    .line 1720
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1722
    sget-object v0, Lde/gdata/mobilesecurity/intents/Main;->g:[Ljava/lang/Boolean;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1723
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/Trial;->isTrialOutOfTrialPeriod()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/Trial;->isProtectFeaturesUntilRegistration()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/Trial;->isInvalidTrial()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getLoginLimit()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v4, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/BasePreferences;->getLoginLimit()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1727
    :cond_1
    invoke-virtual {p0, p0}, Lde/gdata/mobilesecurity/intents/Main;->showNotAllowedOutOfTrialPeriodDialog(Landroid/support/v7/app/ActionBarActivity;)V

    .line 1728
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/Main;->l()V

    .line 1730
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/intents/Main;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->Q:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->R:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 1857
    :cond_2
    :goto_0
    return-void

    .line 1733
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->u:Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->setPrivacyEnabled(Z)V

    .line 1734
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setBitDefenderEnabled(Z)V

    .line 1737
    :cond_4
    if-ne v3, v7, :cond_5

    .line 1738
    iget-object v4, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-static {p0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/Trial;->isTrialOutOfTrialPeriod()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/Trial;->isProtectFeaturesUntilRegistration()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/Trial;->isInvalidTrial()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setBitDefenderEnabled(Z)V

    .line 1742
    :cond_5
    const/16 v0, 0x13

    if-ne v3, v0, :cond_7

    .line 1743
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardConfiguring(Z)V

    .line 1745
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/intents/Main;->setSupportProgressBarIndeterminateVisibility(Z)V

    .line 1747
    new-instance v0, Lde/gdata/mobilesecurity/mms/ProfileSelector;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/mms/ProfileSelector;-><init>(Landroid/content/Context;)V

    const-string v1, "Private"

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/mms/ProfileSelector;->apply(Ljava/lang/String;)Z

    .line 1749
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1750
    const-class v1, Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1751
    const-string v1, "selectItem"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1753
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->startActivity(Landroid/content/Intent;)V

    .line 1754
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->finish()V

    goto :goto_0

    :cond_6
    move v0, v2

    .line 1738
    goto :goto_1

    .line 1759
    :cond_7
    const/4 v0, 0x2

    if-ne v3, v0, :cond_9

    .line 1760
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isOrangeOemVersion()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1761
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->x:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->a(Ljava/lang/Class;)V

    .line 1768
    :goto_2
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/intents/Main;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->Q:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->R:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_0

    .line 1764
    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v3, Lde/gdata/mobilesecurity/util/OemOrange;

    invoke-direct {v3}, Lde/gdata/mobilesecurity/util/OemOrange;-><init>()V

    invoke-static {p0, v2}, Lde/gdata/mobilesecurity/util/OemOrange;->GetBuyUrl(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 1772
    :cond_9
    const/16 v0, 0x12

    if-ne v3, v0, :cond_b

    .line 1774
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardConfiguring()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1775
    const-class v0, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1780
    :goto_3
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/intents/Main;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->Q:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->R:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1777
    :cond_a
    const-class v0, Lde/gdata/mobilesecurity/intents/Preferences;

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_3

    .line 1784
    :cond_b
    sget-object v0, Lde/gdata/mobilesecurity/intents/Main;->d:[I

    aget v0, v0, v3

    if-nez v0, :cond_d

    .line 1785
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->c:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 1786
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->c:Landroid/view/View;

    const v4, 0x7f0b02ae

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1787
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090039

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1788
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/util/BasePreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 1789
    invoke-static {v0, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 1790
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->c:Landroid/view/View;

    const v4, 0x7f020153

    invoke-direct {p0, v0, v4}, Lde/gdata/mobilesecurity/intents/Main;->a(Landroid/view/View;I)V

    .line 1792
    :cond_c
    sput v3, Lde/gdata/mobilesecurity/intents/Main;->activeItem:I

    .line 1794
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/Main;->c:Landroid/view/View;

    .line 1795
    if-eqz p1, :cond_d

    .line 1796
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->c:Landroid/view/View;

    const v4, 0x7f0b02ae

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1797
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090036

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1798
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/util/BasePreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 1799
    invoke-static {v0, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 1800
    const v0, 0x7f020157

    invoke-direct {p0, p1, v0}, Lde/gdata/mobilesecurity/intents/Main;->a(Landroid/view/View;I)V

    .line 1804
    :cond_d
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 1805
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v4

    .line 1806
    :goto_4
    if-ge v2, v4, :cond_e

    .line 1807
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 1806
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1810
    :cond_e
    invoke-static {v3}, Lde/gdata/mobilesecurity/intents/Main;->getActiveFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->s:Landroid/support/v4/app/Fragment;

    .line 1812
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->s:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_15

    .line 1813
    if-nez p3, :cond_f

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 1815
    :cond_f
    const-string v0, "contentFrame"

    const v2, 0x7f0b02a8

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1817
    const/16 v0, 0xf

    if-ne v3, v0, :cond_10

    const-string v0, "DIRECTION"

    sget v2, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration;->DIRECTION_IN:I

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1819
    :cond_10
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->s:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p3}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1821
    if-eq v3, v1, :cond_11

    if-eq v3, v7, :cond_11

    if-eq v3, v6, :cond_11

    const/4 v0, 0x5

    if-eq v3, v0, :cond_11

    const/4 v0, 0x7

    if-eq v3, v0, :cond_11

    if-eq v3, v8, :cond_11

    const/16 v0, 0x10

    if-eq v3, v0, :cond_11

    const/16 v0, 0xf

    if-ne v3, v0, :cond_16

    .line 1824
    :cond_11
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d00f4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->setTitle(Ljava/lang/CharSequence;)V

    .line 1830
    :goto_5
    if-ne v3, v6, :cond_12

    .line 1831
    const-string v0, "ANTITHEFT_PAGE"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->s:Landroid/support/v4/app/Fragment;

    check-cast v0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;

    invoke-virtual {v0, p3}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsPagerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1833
    :cond_12
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 1835
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_14

    .line 1836
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f0b02a8

    iget-object v4, p0, Lde/gdata/mobilesecurity/intents/Main;->s:Landroid/support/v4/app/Fragment;

    iget-object v5, p0, Lde/gdata/mobilesecurity/intents/Main;->s:Landroid/support/v4/app/Fragment;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1840
    if-ne v3, v6, :cond_13

    .line 1841
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getSMSCommandPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1842
    const-class v0, Lde/gdata/mobilesecurity/activities/antitheft/Intro;

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1846
    :cond_13
    if-ne v3, v8, :cond_14

    .line 1847
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppProtectionActivated()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1848
    const-class v0, Lde/gdata/mobilesecurity/activities/applock/Settings;

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1853
    :cond_14
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->R:Landroid/widget/ListView;

    invoke-virtual {v0, v3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1856
    :cond_15
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/intents/Main;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->Q:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->R:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1827
    :cond_16
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lde/gdata/mobilesecurity/intents/Main;->i:[I

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/intents/Main;Landroid/support/v7/app/ActionBarActivity;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lde/gdata/mobilesecurity/intents/Main;->a(Landroid/support/v7/app/ActionBarActivity;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/intents/Main;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lde/gdata/mobilesecurity/intents/Main;->a(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/intents/Main;Landroid/view/View;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0, p1, p2, p3}, Lde/gdata/mobilesecurity/intents/Main;->a(Landroid/view/View;ILandroid/os/Bundle;)V

    return-void
.end method

.method private a(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1860
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ragment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1861
    invoke-static {p0, p1}, Lde/gdata/mobilesecurity/util/MyUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1884
    :cond_0
    :goto_0
    return-void

    .line 1863
    :cond_1
    sput-boolean v2, Lde/gdata/mobilesecurity/intents/Main;->ab:Z

    .line 1864
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1867
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1869
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1870
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0b02a8

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1874
    :cond_2
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->R:Landroid/widget/ListView;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1875
    const/4 v1, 0x2

    sput v1, Lde/gdata/mobilesecurity/intents/Main;->activeItem:I

    .line 1876
    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->s:Landroid/support/v4/app/Fragment;

    .line 1878
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/intents/Main;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->Q:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->R:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1880
    :catch_0
    move-exception v0

    .line 1881
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a()[I
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lde/gdata/mobilesecurity/intents/Main;->i:[I

    return-object v0
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->M:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 1686
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1687
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/scan/ScanService;->startSideLoadScan(Landroid/content/Context;Ljava/lang/String;)V

    .line 1688
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->finish()V

    .line 1689
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1466
    if-eqz p1, :cond_0

    const-string v0, "ACTION_SET_ACCESS_DATA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1467
    const-string v0, "ACTION_SET_ACCESS_DATA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1468
    array-length v1, v0

    if-lt v1, v6, :cond_0

    .line 1470
    new-instance v1, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;

    invoke-direct {v1, p0, p0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;-><init>(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;)V

    new-array v2, v7, [Ljava/lang/String;

    aget-object v3, v0, v4

    aput-object v3, v2, v4

    aget-object v0, v0, v5

    aput-object v0, v2, v5

    const-string v0, "1"

    aput-object v0, v2, v6

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1474
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "ACTION_REGISTER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1475
    const-string v0, "ACTION_REGISTER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1476
    array-length v1, v0

    if-lt v1, v8, :cond_1

    .line 1477
    new-instance v1, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;

    invoke-direct {v1, p0, p0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;-><init>(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    aget-object v3, v0, v4

    aput-object v3, v2, v4

    aget-object v3, v0, v5

    aput-object v3, v2, v5

    aget-object v3, v0, v6

    aput-object v3, v2, v6

    aget-object v0, v0, v7

    aput-object v0, v2, v7

    const-string v0, "false"

    aput-object v0, v2, v8

    const/4 v0, 0x5

    const-string v3, ""

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1480
    :cond_1
    return-void
.end method

.method static synthetic b()[I
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lde/gdata/mobilesecurity/intents/Main;->d:[I

    return-object v0
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->N:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c()[I
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lde/gdata/mobilesecurity/intents/Main;->h:[I

    return-object v0
.end method

.method static synthetic d(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d()[I
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lde/gdata/mobilesecurity/intents/Main;->f:[I

    return-object v0
.end method

.method static synthetic e(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->o:Ljava/util/ArrayList;

    return-object v0
.end method

.method private e()V
    .locals 7

    .prologue
    const v6, 0x7f0200f4

    const/16 v5, 0x9

    const/16 v4, 0x8

    .line 348
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    .line 349
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 350
    new-instance v0, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->u:Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;

    .line 352
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppProtectedByDefault()Z

    move-result v1

    .line 353
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppDeniedByDefault()Z

    move-result v2

    .line 355
    sget-object v3, Lde/gdata/mobilesecurity/intents/Main;->i:[I

    if-eqz v1, :cond_1

    const v0, 0x7f0d035b

    :goto_0
    aput v0, v3, v4

    .line 357
    sget-object v3, Lde/gdata/mobilesecurity/intents/Main;->i:[I

    if-eqz v2, :cond_2

    const v0, 0x7f0d0357

    :goto_1
    aput v0, v3, v5

    .line 360
    sget-object v0, Lde/gdata/mobilesecurity/intents/Main;->h:[I

    if-eqz v1, :cond_0

    :cond_0
    aput v6, v0, v4

    .line 361
    sget-object v1, Lde/gdata/mobilesecurity/intents/Main;->h:[I

    if-eqz v2, :cond_3

    const v0, 0x7f0200e1

    :goto_2
    aput v0, v1, v5

    .line 362
    return-void

    .line 355
    :cond_1
    const v0, 0x7f0d035a

    goto :goto_0

    .line 357
    :cond_2
    const v0, 0x7f0d0356

    goto :goto_1

    .line 361
    :cond_3
    const v0, 0x7f0200e0

    goto :goto_2
.end method

.method private f()Ljava/lang/Float;
    .locals 6

    .prologue
    const v5, 0x7f0a0066

    .line 387
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 388
    const/4 v1, 0x1

    .line 389
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 390
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 392
    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v1, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 394
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 395
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 397
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getMenuStrings()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 398
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 400
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    const v1, 0x7f0a0067

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 404
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 406
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 408
    return-object v0
.end method

.method static synthetic f(Lde/gdata/mobilesecurity/intents/Main;)[I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->r:[I

    return-object v0
.end method

.method static synthetic g(Lde/gdata/mobilesecurity/intents/Main;)I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lde/gdata/mobilesecurity/intents/Main;->q:I

    return v0
.end method

.method private g()V
    .locals 2

    .prologue
    const v1, 0x7f0d00f4

    .line 1136
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMMSEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1137
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-static {p0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1146
    :goto_0
    return-void

    .line 1139
    :cond_0
    invoke-static {p0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1141
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isOrangeOemVersion()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1142
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/OemOrange;->getTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1144
    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static getActiveFragment(I)Landroid/support/v4/app/Fragment;
    .locals 3

    .prologue
    .line 430
    sget-object v0, Lde/gdata/mobilesecurity/intents/Main;->e:[Ljava/lang/Class;

    aget-object v0, v0, p0

    if-eqz v0, :cond_0

    .line 432
    :try_start_0
    sget-object v0, Lde/gdata/mobilesecurity/intents/Main;->e:[Ljava/lang/Class;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :goto_0
    return-object v0

    .line 434
    :catch_0
    move-exception v0

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instantiating new fragment failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 439
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lde/gdata/mobilesecurity/intents/Main;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->x:Ljava/lang/Class;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    const v2, 0x7f02013f

    const v1, 0x7f02013d

    .line 1488
    invoke-static {p0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->isValidOemGraphic(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1489
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "info_oem.png"

    invoke-static {p0, v0, v1}, Lde/gdata/mobilesecurity/util/MyFileHandler;->writePrivateFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Z

    .line 1492
    :cond_0
    invoke-static {p0, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->isValidOemGraphic(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1493
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "info_quer_oem.png"

    invoke-static {p0, v0, v1}, Lde/gdata/mobilesecurity/util/MyFileHandler;->writePrivateFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Z

    .line 1495
    :cond_1
    return-void
.end method

.method static synthetic i(Lde/gdata/mobilesecurity/intents/Main;)I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lde/gdata/mobilesecurity/intents/Main;->T:I

    return v0
.end method

.method private i()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x2

    .line 1650
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1651
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1652
    if-eqz v0, :cond_0

    .line 1653
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1654
    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1655
    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->a(Landroid/net/Uri;)V

    .line 1671
    :cond_0
    :goto_0
    return-void

    .line 1656
    :cond_1
    const-string v3, "file:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1657
    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->b(Landroid/net/Uri;)V

    goto :goto_0

    .line 1658
    :cond_2
    const-string v0, "gdfscan:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1659
    invoke-static {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->startFileScan(Landroid/content/Context;)V

    goto :goto_0

    .line 1660
    :cond_3
    const-string v0, "gdascan:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1661
    invoke-static {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->startAppScan(Landroid/content/Context;)V

    goto :goto_0

    .line 1662
    :cond_4
    const-string v0, "gdsupdate:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1665
    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1666
    array-length v0, v2

    if-lt v0, v5, :cond_6

    const/4 v0, 0x1

    aget-object v0, v2, v0

    .line 1667
    :goto_1
    array-length v3, v2

    const/4 v4, 0x3

    if-lt v3, v4, :cond_5

    aget-object v1, v2, v5

    .line 1668
    :cond_5
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/intents/Main;->startUpdateService(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic j(Lde/gdata/mobilesecurity/intents/Main;)Lde/gdata/mobilesecurity/util/BasePreferences;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    return-object v0
.end method

.method private j()V
    .locals 10

    .prologue
    .line 2312
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "loadProfiles"

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2313
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2315
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->L:Ljava/util/ArrayList;

    .line 2316
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->M:Ljava/util/ArrayList;

    .line 2317
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->N:Ljava/util/ArrayList;

    .line 2319
    const-string v1, "SELECT profile, type, name FROM profiles  WHERE profile <> \'Toddler\' AND profile <> \'Teenager\'"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 2321
    const-string v0, "profile"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 2322
    const-string v0, "type"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 2323
    const-string v0, "name"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 2324
    const/4 v0, 0x0

    .line 2326
    if-eqz v3, :cond_4

    .line 2327
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2328
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2329
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 2330
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2332
    iget-object v9, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v9}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2333
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, p0, Lde/gdata/mobilesecurity/intents/Main;->O:Ljava/lang/Integer;

    .line 2337
    :goto_1
    if-eqz v1, :cond_1

    const-string v9, ""

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 2340
    :goto_2
    iget-object v9, p0, Lde/gdata/mobilesecurity/intents/Main;->L:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2341
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->M:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2342
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->N:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2335
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2337
    :cond_1
    sget-object v1, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile$Types;->PRIVATE:Ljava/lang/Integer;

    if-ne v8, v1, :cond_2

    const v1, 0x7f0d0212

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const v1, 0x7f0d020b

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 2345
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2348
    :cond_4
    const-string v0, "loadProfiles"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 2349
    return-void
.end method

.method static synthetic k(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->m:Ljava/util/HashMap;

    return-object v0
.end method

.method private k()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2546
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v0

    .line 2547
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getDecryptedPassword()Ljava/lang/String;

    move-result-object v1

    .line 2549
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getPurchaseData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 2550
    invoke-static {}, Lde/gdata/mobilesecurity/inapp/plasma/Plasma;->isPlasmaAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2551
    const-class v0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->x:Ljava/lang/Class;

    .line 2577
    :cond_0
    :goto_0
    return-void

    .line 2553
    :cond_1
    const-class v0, Lde/gdata/mobilesecurity/intents/AccountManagementInApp;

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->x:Ljava/lang/Class;

    goto :goto_0

    .line 2555
    :cond_2
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isGoogleFreemium()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2556
    iput-object v4, p0, Lde/gdata/mobilesecurity/intents/Main;->x:Ljava/lang/Class;

    goto :goto_0

    .line 2557
    :cond_3
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->isGoogleMarketPackage(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2558
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyUtil;->sanityCheck([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2559
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/Trial;->isUnregisteredTrial()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2560
    const-class v0, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->x:Ljava/lang/Class;

    goto :goto_0

    .line 2562
    :cond_4
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getUiOptionBus()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2563
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMMSEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2564
    const-class v0, Lde/gdata/mobilesecurity/intents/BusinessPreferences;

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->x:Ljava/lang/Class;

    goto :goto_0

    .line 2566
    :cond_5
    iput-object v4, p0, Lde/gdata/mobilesecurity/intents/Main;->x:Ljava/lang/Class;

    goto :goto_0

    .line 2568
    :cond_6
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isOrangeOemVersion()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2569
    iput-object v4, p0, Lde/gdata/mobilesecurity/intents/Main;->x:Ljava/lang/Class;

    goto :goto_0

    .line 2572
    :cond_7
    const-class v0, Lde/gdata/mobilesecurity/intents/AccountManagementIPXPre;

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->x:Ljava/lang/Class;

    goto :goto_0
.end method

.method static synthetic l(Lde/gdata/mobilesecurity/intents/Main;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->p:Landroid/util/SparseArray;

    return-object v0
.end method

.method private l()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2650
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAntiTheftEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->disableAllAntiTheftCommands()V

    .line 2652
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getBlockIncomingCalls()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setBlockIncomingCalls(Ljava/lang/String;)V

    .line 2654
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getBlockOutgoingCalls()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setBlockOutgoingCalls(Ljava/lang/String;)V

    .line 2656
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppProtectionActivated()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionActivated(Z)V

    .line 2658
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->u:Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->getHiddenCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 2659
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v4}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getContactsUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2661
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v4}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getNumbersUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2665
    :cond_4
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->u:Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->setPrivacyEnabled(Z)V

    .line 2666
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setBitDefenderEnabled(Z)V

    .line 2667
    return-void
.end method


# virtual methods
.method public OCLgoUpdate()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2417
    invoke-static {}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2418
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2419
    const/4 v0, -0x2

    invoke-static {p0, p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showErrorDialog(Landroid/support/v4/app/FragmentActivity;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->z:Landroid/support/v4/app/DialogFragment;

    .line 2457
    :cond_0
    :goto_0
    return-void

    .line 2423
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getPurchaseData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 2424
    invoke-static {}, Lde/gdata/mobilesecurity/inapp/plasma/Plasma;->isPlasmaAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2425
    new-instance v0, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;-><init>()V

    .line 2427
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2428
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0b02a8

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 2433
    :cond_2
    const-class v0, Lde/gdata/mobilesecurity/intents/AccountManagementInApp;

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 2437
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v1

    .line 2438
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getDecryptedPassword()Ljava/lang/String;

    move-result-object v0

    .line 2440
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isGoogleFreemium()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2441
    new-array v2, v5, [Ljava/lang/String;

    aput-object v1, v2, v3

    aput-object v0, v2, v4

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyUtil;->sanityCheck([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2443
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getAvFreeDefaultUser()Ljava/lang/String;

    move-result-object v1

    .line 2444
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getAvFreeDefaultPwd()Ljava/lang/String;

    move-result-object v0

    .line 2454
    :cond_4
    invoke-virtual {p0, v1, v0}, Lde/gdata/mobilesecurity/intents/Main;->startUpdateService(Ljava/lang/String;Ljava/lang/String;)V

    .line 2455
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setTimeOfLastPeriodicUpdate(J)V

    goto :goto_0

    .line 2447
    :cond_5
    new-array v2, v5, [Ljava/lang/String;

    aput-object v1, v2, v3

    aput-object v0, v2, v4

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyUtil;->sanityCheck([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2448
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->OCLgoUpdateInformations()V

    goto/16 :goto_0
.end method

.method public OCLgoUpdateInformations()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2463
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getUiOptionBus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2464
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMMSEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2465
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->showMMSConnectDeferredDialog()V

    .line 2501
    :goto_0
    return-void

    .line 2467
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->didMMSLastConnectSucceed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2468
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d022f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showErrorDialog(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Landroid/support/v4/app/DialogFragment;

    goto :goto_0

    .line 2471
    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0230

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showErrorDialog(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Landroid/support/v4/app/DialogFragment;

    goto :goto_0

    .line 2475
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isGoogleFreemium()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2476
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/Trial;->isInvalidTrial()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2478
    invoke-static {p0}, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->getLandingPageUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2479
    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->startAndroidBrowser(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2482
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2483
    const-class v1, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2484
    const-string v1, "SELECTED_PAGE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2485
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2487
    :cond_4
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/Trial;->isUnregisteredTrial()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isCompassOemVersion()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2488
    :cond_5
    const-class v0, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->a(Ljava/lang/Class;)V

    goto :goto_0

    .line 2490
    :cond_6
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isOrangeOemVersion()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2491
    new-instance v0, Lde/gdata/mobilesecurity/util/OemOrange;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/util/OemOrange;-><init>()V

    invoke-static {p0, v2}, Lde/gdata/mobilesecurity/util/OemOrange;->GetBuyUrl(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 2492
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2493
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2494
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/intents/Main;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2495
    :cond_7
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isGlobalWiseVersion()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2496
    const-string v0, "http://gshop.g-wise.co.jp/btoc/order/phone.php"

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->startAndroidBrowser(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2498
    :cond_8
    const-class v0, Lde/gdata/mobilesecurity/intents/AccountManagementIPXPre;

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_0
.end method

.method public getMenuStrings()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 372
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lde/gdata/mobilesecurity/intents/Main;->i:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 373
    sget-object v2, Lde/gdata/mobilesecurity/intents/Main;->d:[I

    aget v2, v2, v0

    if-nez v2, :cond_0

    .line 374
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lde/gdata/mobilesecurity/intents/Main;->i:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    :cond_1
    return-object v1
.end method

.method public hideUpdateMenuItem()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 1541
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->n:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1543
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1544
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->P:Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;

    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->P:Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->remove(Ljava/lang/Object;)V

    .line 1545
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->P:Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->notifyDataSetChanged()V

    .line 1547
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1549
    :cond_0
    return-void
.end method

.method public onAccepted()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1444
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->setEulaAccepted(Z)V

    .line 1446
    new-instance v0, Lde/gdata/mobilesecurity/util/OemOrange;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/util/OemOrange;-><init>()V

    .line 1447
    invoke-virtual {v0, p0, p0, v1}, Lde/gdata/mobilesecurity/util/OemOrange;->Startup(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;Z)V

    .line 1449
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->J:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1450
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->J:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->b(Landroid/os/Bundle;)V

    .line 1451
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->J:Landroid/os/Bundle;

    .line 1453
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/16 v2, 0x14e

    const/4 v3, 0x1

    .line 1499
    invoke-super {p0, p1, p2, p3}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1500
    const/16 v0, 0x14d

    if-ne p1, v0, :cond_3

    .line 1501
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->wasWizardShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->isEulaAccepted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1502
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lde/gdata/mobilesecurity/intents/Main;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1538
    :cond_1
    :goto_0
    return-void

    .line 1504
    :cond_2
    new-instance v0, Lde/gdata/mobilesecurity/util/OemOrange;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/util/OemOrange;-><init>()V

    .line 1505
    invoke-virtual {v0, p0, p0, v3}, Lde/gdata/mobilesecurity/util/OemOrange;->Startup(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;Z)V

    goto :goto_0

    .line 1507
    :cond_3
    if-ne p1, v2, :cond_1

    .line 1508
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->isGoogleMarketPackage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1509
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isOrangeOemVersion()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1510
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setWizardShown(Z)V

    .line 1511
    new-instance v0, Lde/gdata/mobilesecurity/util/OemOrange;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/util/OemOrange;-><init>()V

    .line 1512
    invoke-virtual {v0, p0, p0, v3}, Lde/gdata/mobilesecurity/util/OemOrange;->Startup(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;Z)V

    goto :goto_0

    .line 1513
    :cond_4
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMicrostationOemVersion()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1514
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->isEulaAccepted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1515
    new-instance v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->hide()Z

    .line 1516
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->finish()V

    goto :goto_0

    .line 1518
    :cond_5
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getDecryptedPassword()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->sanityCheck([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1520
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->hideUpdateMenuItem()V

    goto :goto_0

    .line 1524
    :cond_6
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->isEulaAccepted()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->wasWizardAuthSuccessful()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1525
    :cond_7
    new-instance v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->hide()Z

    .line 1526
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->finish()V

    goto :goto_0

    .line 1528
    :cond_8
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->OCLgoUpdate()V

    goto/16 :goto_0

    .line 1532
    :cond_9
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->isEulaAccepted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1533
    new-instance v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->hide()Z

    .line 1534
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->finish()V

    goto/16 :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1162
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onAttachedToWindow()V

    .line 1163
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1164
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 1165
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 453
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 455
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->isDebugMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->isWebServerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->setDebugFlag(Z)V

    .line 457
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "PROFILE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->a(Landroid/content/IntentFilter;)V

    .line 459
    if-eqz p1, :cond_18

    const-string v0, "activeItem"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    sput v0, Lde/gdata/mobilesecurity/intents/Main;->activeItem:I

    .line 460
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/intents/Main;->b:Z

    .line 461
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 462
    if-nez v1, :cond_19

    const/4 v0, 0x0

    .line 463
    :goto_1
    if-eqz v0, :cond_4

    .line 464
    const-string v2, "selectItem"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 465
    const-string v2, "selectItem"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 466
    sget v3, Lde/gdata/mobilesecurity/intents/Main;->activeItem:I

    if-eq v2, v3, :cond_2

    .line 467
    sput v2, Lde/gdata/mobilesecurity/intents/Main;->activeItem:I

    .line 468
    const/4 p1, 0x0

    .line 470
    :cond_2
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "selectItem"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 472
    :cond_3
    const-string v2, "openDrawer"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 473
    const-string v2, "openDrawer"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/intents/Main;->b:Z

    .line 474
    const-string v0, "openDrawer"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 478
    :cond_4
    new-instance v0, Lde/gdata/mobilesecurity/intents/k;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/intents/k;-><init>(Lde/gdata/mobilesecurity/intents/Main;)V

    const-string v1, "FINISH_MAIN"

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/intents/Main;->registerLocalBroadcastReceiver(Lde/gdata/mobilesecurity/intents/OnBroadcastExecutor;Ljava/lang/String;)V

    .line 486
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Main.onCreate"

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    .line 488
    new-instance v0, Lde/gdata/mobilesecurity/activities/browser/BrowserDatabase;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/activities/browser/BrowserDatabase;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 490
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/Main;->e()V

    .line 492
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->m:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->m:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isOrangeOemVersion()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMicrostationOemVersion()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getUiOptionBus()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 497
    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/adjust/sdk/Adjust;->setEnabled(Ljava/lang/Boolean;)V

    .line 500
    :cond_6
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const-string v1, "Roboto-Light.ttf"

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setApplicationFont(Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Toddler"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 505
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardConfiguring()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 506
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardToddlerActive()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardConfiguring(Z)V

    .line 507
    :cond_7
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionActivated(Z)V

    .line 513
    :cond_8
    :goto_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Teenager"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 514
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardConfiguring()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 515
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardTeenagerActive()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardConfiguring(Z)V

    .line 516
    :cond_9
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionActivated(Z)V

    .line 522
    :goto_3
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardTeenagerActive()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAntiphishingPermissions(I)V

    .line 524
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardTeenagerActive()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setApplockPermissions(I)V

    .line 527
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfilePermissions()I

    move-result v0

    const/16 v1, 0x209

    if-ne v0, v1, :cond_a

    .line 528
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/16 v1, 0x109

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setProfilePermissions(I)V

    .line 532
    :cond_a
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfilePermissions()I

    move-result v0

    const/16 v1, 0x209

    if-ne v0, v1, :cond_b

    .line 533
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/16 v1, 0x109

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setProfilePermissions(I)V

    .line 536
    :cond_b
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardToddlerActive()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 537
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 545
    :goto_6
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Private"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 546
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardToddlerActive(Z)V

    .line 547
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardTeenagerActive(Z)V

    .line 549
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardConfiguring(Z)V

    .line 552
    :cond_c
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfilePermissions()I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/intents/Main;->q:I

    .line 554
    iget v0, p0, Lde/gdata/mobilesecurity/intents/Main;->q:I

    and-int/lit8 v0, v0, 0x18

    if-nez v0, :cond_d

    .line 555
    const/16 v0, 0x9ef

    iput v0, p0, Lde/gdata/mobilesecurity/intents/Main;->q:I

    .line 560
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget v1, p0, Lde/gdata/mobilesecurity/intents/Main;->q:I

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setProfilePermissions(I)V

    .line 564
    :cond_d
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardConfiguring()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Toddler"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 567
    const/16 v0, 0xe10

    iput v0, p0, Lde/gdata/mobilesecurity/intents/Main;->q:I

    .line 570
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAntiphishingPermissions(I)V

    .line 574
    :cond_e
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardConfiguring()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Teenager"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 577
    const/16 v0, 0x210

    iput v0, p0, Lde/gdata/mobilesecurity/intents/Main;->q:I

    .line 579
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAntiphishingPermissions(I)V

    .line 582
    :cond_f
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->isGoogleMarketPackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getGoogleAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    .line 583
    const-string v0, "Google licensing succeeded: Deferred licensing process"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 585
    :try_start_0
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/TaskDeferredRegister;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskDeferredRegister;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#GOOG|KMBKS|RALXI|WNPWL|LG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerRequest;->getGDataLanguageCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->getLicensedGoogleAccount()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "false"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->getGoogleAdditionalInfo()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedPassword()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->getNormalizedPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/updateserverconnection/TaskDeferredRegister;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 594
    :cond_10
    :goto_7
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->isGoogleMarketPackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->isGoogleBillingSupported()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 595
    const-string v0, "call license checker..."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 596
    new-instance v0, Lde/gdata/mobilesecurity/intents/ah;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lde/gdata/mobilesecurity/intents/ah;-><init>(Lde/gdata/mobilesecurity/intents/Main;Lde/gdata/mobilesecurity/intents/k;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->D:Lde/gdata/mobilesecurity/intents/ah;

    .line 597
    new-instance v0, Lcom/google/android/vending/licensing/LicenseChecker;

    new-instance v1, Lcom/google/android/vending/licensing/ServerManagedPolicy;

    new-instance v2, Lcom/google/android/vending/licensing/AESObfuscator;

    sget-object v3, Lde/gdata/mobilesecurity/intents/Main;->w:[B

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/vending/licensing/AESObfuscator;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, p0, v2}, Lcom/google/android/vending/licensing/ServerManagedPolicy;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Obfuscator;)V

    const-string v2, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAuXmF7misjsitmOmuGCMb04ilmUNzqa/0/5tQBBs1knARiH5o0xnxlGynMYctE0ej2zvqXj4mTyD4ylhtLwNFWqw3W5XPR3/t97wlsunRce3VGdbksX0CeJ2tAk2wyvNENjpIGRlbf3MjXPM5d8iFM5DrxGo7wGDjgeQTsW9YFZS2FTZRNTGyC7PXSzhHz/8UQgZ5PXJD0TSyHKu9GC5y3MkfTpUFWwARF5Wz90/FNsDLsdrnMPogTtORs9kucKoAc4qGSjdBjbcpoM/fe8QFgMOJUbTNVvZp2BhlB2daB9aPIalYw+mrWu0L/vhg6J9sovNOlYcwx/3Iqz7UVgWvUwIDAQAB"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/vending/licensing/LicenseChecker;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Policy;Ljava/lang/String;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->E:Lcom/google/android/vending/licensing/LicenseChecker;

    .line 599
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->E:Lcom/google/android/vending/licensing/LicenseChecker;

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->D:Lde/gdata/mobilesecurity/intents/ah;

    invoke-virtual {v0, v1}, Lcom/google/android/vending/licensing/LicenseChecker;->checkAccess(Lcom/google/android/vending/licensing/LicenseCheckerCallback;)V

    .line 600
    const-string v0, "license check ready"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 605
    :goto_8
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->updateCustomizedSetupOptionsOnSoftwareUpdate()V

    .line 607
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isCompassOemVersion()Z

    move-result v0

    if-nez v0, :cond_11

    .line 608
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setCheckedForSMSReceivers(Z)V

    .line 611
    :cond_11
    new-instance v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;-><init>(Landroid/content/Context;)V

    .line 613
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 614
    const/4 v2, 0x0

    .line 615
    const/4 v1, 0x0

    .line 616
    if-eqz v11, :cond_12

    const-string v3, "NOTIFICATION"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 617
    const/4 v2, 0x1

    .line 618
    const-string v1, "NOTIFICATION"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 619
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "NOTIFICATION"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_12
    move v9, v1

    move v10, v2

    .line 621
    if-eqz v11, :cond_13

    const-string v1, "START_ACTION"

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_13

    iput-object v11, p0, Lde/gdata/mobilesecurity/intents/Main;->J:Landroid/os/Bundle;

    .line 623
    :cond_13
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getFirstStart()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 625
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyUtil;->convertStreamToSB(Ljava/io/InputStream;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 627
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_14

    .line 628
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Lde/gdata/mobilesecurity/util/Trial;->setFirstStart(Landroid/content/Context;Ljava/lang/String;)V

    .line 634
    :cond_14
    :try_start_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyUtil;->readStringFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 636
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->setCustomizedSetupOptions(Ljava/lang/String;Z)V

    .line 637
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setCustomizedSetupOptions(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 641
    :goto_9
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/Main;->h()V

    .line 643
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setFirstStartDateTime(J)V

    .line 645
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isCompassOemVersion()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 646
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getFirstStartDateTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Lde/gdata/mobilesecurity/util/MyUtil;->daysToMs(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->setLastScanNotificationShown(J)V

    .line 648
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getFirstStartDateTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Lde/gdata/mobilesecurity/util/MyUtil;->daysToMs(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->setLastSigsNotificationShown(J)V

    .line 652
    :cond_15
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setFirstStart(Z)V

    .line 655
    :cond_16
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isSapOemVersion()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 656
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->k:[I

    iput-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->r:[I

    .line 665
    :goto_a
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/Main;->k()V

    .line 668
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->getUiOptionBus()Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "AND_B_SG2"

    const-string v2, "AND_B_PGM"

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->setUpdateComponents(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :cond_17
    const/4 v1, 0x0

    .line 671
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->isOrangeOemVersion()Z

    move-result v12

    .line 673
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isOrangeOemVersion()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 674
    new-instance v2, Lde/gdata/mobilesecurity/util/OemOrange;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/util/OemOrange;-><init>()V

    .line 675
    invoke-virtual {v2, p0}, Lde/gdata/mobilesecurity/util/OemOrange;->isOrangeSIMCheckDialog(Landroid/support/v7/app/ActionBarActivity;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 978
    :goto_b
    return-void

    .line 459
    :cond_18
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 462
    :cond_19
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    .line 509
    :cond_1a
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardToddlerActive(Z)V

    .line 510
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionActivated(Z)V

    goto/16 :goto_2

    .line 518
    :cond_1b
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardTeenagerActive(Z)V

    .line 519
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setAppProtectionActivated(Z)V

    goto/16 :goto_3

    .line 522
    :cond_1c
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 524
    :cond_1d
    const/16 v0, 0x1ff

    goto/16 :goto_5

    .line 541
    :cond_1e
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto/16 :goto_6

    .line 603
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no license check, packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 638
    :catch_0
    move-exception v1

    .line 639
    const-string v1, "Failed to parse customize"

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 658
    :cond_20
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isCompassOemVersion()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 659
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->l:[I

    iput-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->r:[I

    goto/16 :goto_a

    .line 662
    :cond_21
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->j:[I

    iput-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->r:[I

    goto/16 :goto_a

    .line 678
    :cond_22
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/intents/Main;->a(Landroid/os/Bundle;)V

    .line 680
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->getUiOptionBus()Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->isEulaAccepted()Z

    move-result v2

    if-nez v2, :cond_36

    .line 681
    if-nez v12, :cond_38

    .line 682
    invoke-static {p0, p0}, Lde/gdata/mobilesecurity/util/MyUtil;->showEulaDialog(Landroid/support/v4/app/FragmentActivity;Lde/gdata/mobilesecurity/util/EulaListener;)Landroid/support/v4/app/DialogFragment;

    move-result-object v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->V:Landroid/support/v4/app/DialogFragment;

    .line 683
    const/4 v1, 0x1

    move v6, v1

    .line 730
    :goto_c
    invoke-static {}, Lde/gdata/mobilesecurity/util/BaseLibLoader;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_23

    .line 731
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->showLibDialog(Landroid/support/v4/app/FragmentActivity;)V

    .line 734
    :cond_23
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isCompassOemVersion()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->wasCompassWlanUpdateReset()Z

    move-result v1

    if-nez v1, :cond_24

    .line 735
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->setPeriodicUpdateWifiOnly(Z)V

    .line 736
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->resetCompassWlanUpdate(Z)V

    .line 739
    :cond_24
    if-nez p1, :cond_27

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isCompassOemVersion()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 741
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 742
    const/4 v1, 0x0

    .line 743
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 745
    :cond_25
    if-eqz v1, :cond_26

    if-nez v2, :cond_41

    .line 746
    :cond_26
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isCompassOemTest()Z

    move-result v1

    if-eqz v1, :cond_40

    const-string v1, "http://g.litcity.ne.jp/cancel_stg"

    .line 748
    :goto_d
    invoke-static {p0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->startBrowser(Landroid/app/Activity;Ljava/lang/String;)V

    .line 773
    :cond_27
    :goto_e
    if-nez p1, :cond_28

    .line 774
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/Main;->i()V

    .line 780
    :cond_28
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isOrangeOemVersion()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 781
    const v1, 0x7f0b00d2

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/intents/Main;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 782
    if-eqz v1, :cond_29

    .line 783
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 787
    :cond_29
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->updateAlarmReceiver(Landroid/content/Context;)V

    .line 789
    const/4 v7, 0x0

    .line 791
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->isShowTrayIcon()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 793
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->isEulaAccepted()Z

    move-result v1

    if-eqz v1, :cond_45

    if-eqz v10, :cond_2a

    if-nez v9, :cond_45

    .line 796
    :cond_2a
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->getNewsUnread()I

    move-result v1

    if-lez v1, :cond_2b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->getLastNewsNotificationShown()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-lez v1, :cond_2b

    .line 798
    const/4 v1, 0x4

    sget v2, Lde/gdata/mobilesecurity/receiver/TaskIcon;->NOTIFICATION_TEXT_NEWS_COUNT:I

    const v3, 0x7f020134

    const v4, 0x7f02012d

    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v5}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->addCustomNotification(IIIII)Z

    .line 801
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->setLastNewsNotificationShown(J)V

    .line 803
    :cond_2b
    const-string v1, ""

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->show(Ljava/lang/String;)Z

    .line 805
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->getLastScanNotificationShown()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-lez v1, :cond_2c

    .line 806
    invoke-static {p0}, Lde/gdata/mobilesecurity/scan/ScanService;->updateLastScanOutdatedNotification(Landroid/content/Context;)V

    .line 807
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->setLastScanNotificationShown(J)V

    .line 810
    :cond_2c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->getLastSigsNotificationShown()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-lez v1, :cond_2d

    .line 811
    invoke-static {p0}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->updateSigsOutdatedNotification(Landroid/content/Context;)V

    .line 812
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->setLastSigsNotificationShown(J)V

    .line 815
    :cond_2d
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDeviceInfected()I

    move-result v1

    sget v2, Lde/gdata/mobilesecurity/receiver/TaskIcon;->DEVICE_INFECTED_STATE_NONE:I

    if-eq v1, v2, :cond_4c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->getLastInfectedNotificationShown()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-lez v1, :cond_4c

    .line 817
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDeviceInfected()I

    move-result v2

    invoke-virtual {v1, p0, v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->setDeviceInfected(Landroid/content/Context;I)V

    .line 818
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->setLastInfectedNotificationShown(J)V

    move v8, v7

    .line 827
    :goto_f
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lde/gdata/mobilesecurity/services/WatcherService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/intents/Main;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 828
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lde/gdata/mobilesecurity/services/SimChangeService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/intents/Main;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 831
    if-eqz v11, :cond_4b

    const-string v1, "AUTO_START_UPDATE"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 832
    const-string v1, "AUTO_START_UPDATE"

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 833
    if-eqz v1, :cond_4b

    .line 834
    const-string v1, "Main invoked with AUTO_START_UPDATE"

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 836
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "AUTO_START_UPDATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 838
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->OCLgoUpdate()V

    .line 839
    const/4 v6, 0x1

    move v1, v6

    .line 843
    :goto_10
    if-eqz v10, :cond_2e

    .line 844
    invoke-virtual {v0, p0, p0, v9}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->processCustomNotification(Landroid/support/v4/app/FragmentActivity;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v2

    iput-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->U:Landroid/support/v4/app/DialogFragment;

    .line 846
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->U:Landroid/support/v4/app/DialogFragment;

    if-nez v2, :cond_47

    .line 847
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->getCustomNotificationCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_46

    .line 848
    const/4 v1, 0x1

    .line 887
    :cond_2e
    :goto_11
    if-eqz v8, :cond_2f

    .line 888
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->removeAllCustomNotifications()V

    .line 890
    const-string v2, ""

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->show(Ljava/lang/String;)Z

    .line 893
    :cond_2f
    if-nez v1, :cond_4a

    if-eqz v12, :cond_4a

    .line 894
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->showOrangeSplash()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 895
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setShowOrangeSplash(Z)V

    .line 896
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 897
    const-class v1, Lde/gdata/mobilesecurity/activities/info/Info;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 898
    const-string v1, "SPLASH_TIME"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 899
    const/16 v1, 0x14d

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/intents/Main;->startActivityForResult(Landroid/content/Intent;I)V

    .line 929
    :cond_30
    :goto_12
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 930
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 931
    if-eqz v1, :cond_34

    .line 932
    const-string v2, "showSigsOutdatedDialog"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 933
    const-string v2, "showSigsOutdatedDialog"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 934
    if-eqz v2, :cond_31

    .line 935
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->showSigsOutdatedDialog()Landroid/support/v4/app/DialogFragment;

    move-result-object v2

    .line 936
    if-eqz v2, :cond_31

    .line 938
    const-string v2, "showSigsOutdatedDialog"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 942
    :cond_31
    const-string v2, "showScanOutdatedDialog"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 943
    const-string v2, "showScanOutdatedDialog"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 944
    const-string v3, "customNotificationId"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 945
    if-eqz v2, :cond_32

    .line 946
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lde/gdata/mobilesecurity/intents/Main;->showScanOutdatedDialog(Landroid/content/Context;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v2

    iput-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->B:Landroid/support/v4/app/DialogFragment;

    .line 947
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->B:Landroid/support/v4/app/DialogFragment;

    if-eqz v2, :cond_32

    .line 949
    const-string v2, "showScanOutdatedDialog"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 953
    :cond_32
    const-string v2, "showSubscriptionStartedDialog"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 954
    invoke-static {}, Lde/gdata/mobilesecurity/intents/Main$SubscriptionDialog;->newInstance()Lde/gdata/mobilesecurity/intents/Main$SubscriptionDialog;

    move-result-object v2

    iput-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->A:Landroid/support/v4/app/DialogFragment;

    .line 955
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->A:Landroid/support/v4/app/DialogFragment;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 956
    const-string v2, "showSubscriptionStartedDialog"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 958
    :cond_33
    const-string v0, "switchMenuItem"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 959
    const-string v0, "switchMenuItem"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 960
    if-eqz v0, :cond_34

    .line 961
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/intents/Main;->selectItem(ILandroid/os/Bundle;)V

    .line 966
    :cond_34
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getCallFilterNeedsToMigrate()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 967
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->loadAllOldFilter(Landroid/content/Context;)V

    .line 970
    :cond_35
    new-instance v0, Lde/gdata/mobilesecurity/intents/aa;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/intents/aa;-><init>(Lde/gdata/mobilesecurity/intents/Main;)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/aa;->start()V

    goto/16 :goto_b

    .line 686
    :cond_36
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->getUiOptionBus()Z

    move-result v2

    if-nez v2, :cond_37

    .line 687
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isCompassOemVersion()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 688
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->isEulaAccepted()Z

    move-result v2

    if-nez v2, :cond_37

    .line 691
    invoke-static {p0, p0}, Lde/gdata/mobilesecurity/util/MyUtil;->showEulaDialog(Landroid/support/v4/app/FragmentActivity;Lde/gdata/mobilesecurity/util/EulaListener;)Landroid/support/v4/app/DialogFragment;

    .line 692
    const/4 v1, 0x1

    .line 723
    :cond_37
    :goto_13
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->isEulaAccepted()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 724
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->J:Landroid/os/Bundle;

    if-eqz v2, :cond_38

    .line 725
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->J:Landroid/os/Bundle;

    invoke-direct {p0, v2}, Lde/gdata/mobilesecurity/intents/Main;->b(Landroid/os/Bundle;)V

    .line 726
    const/4 v2, 0x0

    iput-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->J:Landroid/os/Bundle;

    :cond_38
    move v6, v1

    goto/16 :goto_c

    .line 694
    :cond_39
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isOrangeOemVersion()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 696
    const/4 v1, 0x0

    goto :goto_13

    .line 697
    :cond_3a
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isSapOemVersion()Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 701
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->setEulaAccepted(Z)V

    .line 702
    new-instance v2, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;-><init>()V

    .line 703
    iget-object v3, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    const-string v4, "qCMRDwT6O7F0/FbZAA=="

    const v5, -0x5f8c4059

    invoke-virtual {v2, v4, v5}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->Decode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ui89NyXXAA=="

    const v6, -0x5f8c4059

    invoke-virtual {v2, v5, v6}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->Decode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->setAndEncryptUsernameAndPassword(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 705
    :cond_3b
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isGoogleFreemium()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 706
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->wasWizardShown()Z

    move-result v2

    if-nez v2, :cond_37

    .line 707
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->isAntiVirusFree(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 708
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->setEmptyUsernameAndPassword()V

    .line 711
    :cond_3c
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x14e

    invoke-virtual {p0, v1, v2}, Lde/gdata/mobilesecurity/intents/Main;->startActivityForResult(Landroid/content/Intent;I)V

    .line 712
    const/4 v1, 0x1

    goto :goto_13

    .line 715
    :cond_3d
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->wasWizardShown()Z

    move-result v2

    if-nez v2, :cond_3e

    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    :cond_3e
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->isEulaAccepted()Z

    move-result v2

    if-nez v2, :cond_37

    .line 717
    :cond_3f
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lde/gdata/mobilesecurity/activities/wizard/WizardActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x14e

    invoke-virtual {p0, v1, v2}, Lde/gdata/mobilesecurity/intents/Main;->startActivityForResult(Landroid/content/Intent;I)V

    .line 718
    const/4 v1, 0x1

    goto/16 :goto_13

    .line 746
    :cond_40
    const-string v1, "http://g.litcity.ne.jp/start"

    goto/16 :goto_d

    .line 751
    :cond_41
    const-string v1, "user"

    invoke-virtual {v2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 752
    const-string v3, "password"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 753
    const-string v4, "key"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 754
    const-string v5, "firstName"

    invoke-virtual {v2, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 755
    const-string v7, "lastName"

    invoke-virtual {v2, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 756
    const-string v8, "mail"

    invoke-virtual {v2, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 758
    if-eqz v1, :cond_42

    if-eqz v3, :cond_42

    .line 759
    const-string v2, "invoke login compass version"

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 760
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v2, v1, v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->setAndEncryptUsernameAndPassword(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    new-instance v2, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;

    invoke-direct {v2, p0, p0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;-><init>(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;)V

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v3, v4, v1

    const/4 v1, 0x2

    const-string v3, "0"

    aput-object v3, v4, v1

    invoke-virtual {v2, v4}, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_e

    .line 762
    :cond_42
    if-eqz v5, :cond_43

    if-eqz v7, :cond_43

    if-eqz v4, :cond_43

    if-eqz v2, :cond_43

    .line 763
    const-string v1, "invoke register compass version"

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 764
    new-instance v1, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;

    invoke-direct {v1, p0, p0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;-><init>(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;)V

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v4, v3, v8

    const/4 v4, 0x1

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v7, v3, v4

    const/4 v4, 0x3

    aput-object v2, v3, v4

    const/4 v2, 0x4

    const-string v4, "true"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, ""

    aput-object v4, v3, v2

    invoke-virtual {v1, v3}, Lde/gdata/mobilesecurity/updateserverconnection/TaskRegister;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_e

    .line 766
    :cond_43
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isCompassOemTest()Z

    move-result v1

    if-eqz v1, :cond_44

    const-string v1, "http://g.litcity.ne.jp/cancel_stg"

    .line 768
    :goto_14
    invoke-static {p0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->startBrowser(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 766
    :cond_44
    const-string v1, "http://g.litcity.ne.jp/start"

    goto :goto_14

    .line 821
    :cond_45
    const/4 v1, 0x1

    move v8, v1

    goto/16 :goto_f

    .line 850
    :cond_46
    packed-switch v9, :pswitch_data_0

    goto/16 :goto_11

    .line 853
    :pswitch_0
    const v1, 0x7f0d00f4

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/intents/Main;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0d03d2

    invoke-static {p0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f0d03cd

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/intents/Main;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f0d021e

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/intents/Main;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lde/gdata/mobilesecurity/intents/u;

    invoke-direct {v6, p0}, Lde/gdata/mobilesecurity/intents/u;-><init>(Lde/gdata/mobilesecurity/intents/Main;)V

    new-instance v7, Lde/gdata/mobilesecurity/intents/z;

    invoke-direct {v7, p0}, Lde/gdata/mobilesecurity/intents/z;-><init>(Lde/gdata/mobilesecurity/intents/Main;)V

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->U:Landroid/support/v4/app/DialogFragment;

    .line 867
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->U:Landroid/support/v4/app/DialogFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 868
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 869
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->U:Landroid/support/v4/app/DialogFragment;

    const-string v3, "CUSTOM_NOTIFICATION_SIGS_OUTDATED"

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 871
    const/4 v1, 0x1

    .line 872
    goto/16 :goto_11

    .line 884
    :cond_47
    const/4 v1, 0x1

    goto/16 :goto_11

    .line 901
    :cond_48
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 902
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 903
    if-eqz v0, :cond_49

    .line 904
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->W:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 905
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v0

    .line 906
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getDecryptedPassword()Ljava/lang/String;

    move-result-object v1

    .line 907
    new-instance v2, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;

    invoke-direct {v2, p0, p0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;-><init>(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "1"

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_12

    .line 910
    :cond_49
    new-instance v0, Lde/gdata/mobilesecurity/util/OemOrange;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/util/OemOrange;-><init>()V

    .line 911
    const/4 v1, 0x1

    invoke-virtual {v0, p0, p0, v1}, Lde/gdata/mobilesecurity/util/OemOrange;->Startup(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;Z)V

    goto/16 :goto_12

    .line 914
    :cond_4a
    if-nez v1, :cond_30

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getUiOptionBus()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 915
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 916
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 917
    if-eqz v0, :cond_30

    .line 918
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->X:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 919
    const-string v1, "password"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 920
    const-string v2, "server"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 922
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setMMSPassword(Ljava/lang/String;)V

    .line 923
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setMMSServer(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 590
    :catch_1
    move-exception v0

    goto/16 :goto_7

    :cond_4b
    move v1, v6

    goto/16 :goto_10

    :cond_4c
    move v8, v7

    goto/16 :goto_f

    .line 850
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2049
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->isDebugMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2050
    const/16 v0, 0x396f

    const v1, 0x7f0d0210

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02006d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2052
    invoke-static {v0, v3}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 2055
    :cond_0
    sget v0, Lde/gdata/mobilesecurity/intents/Main;->activeItem:I

    if-ne v0, v3, :cond_1

    .line 2056
    const/16 v0, 0x396d

    const v1, 0x7f0d000c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02015c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2058
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 2061
    :cond_1
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1420
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onDestroy()V

    .line 1422
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->y:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->y:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1425
    :cond_0
    iput-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->y:Landroid/app/ProgressDialog;

    .line 1426
    iput-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->V:Landroid/support/v4/app/DialogFragment;

    .line 1428
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->E:Lcom/google/android/vending/licensing/LicenseChecker;

    if-eqz v0, :cond_1

    .line 1429
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->E:Lcom/google/android/vending/licensing/LicenseChecker;

    invoke-virtual {v0}, Lcom/google/android/vending/licensing/LicenseChecker;->onDestroy()V

    .line 1431
    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1432
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->s:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->s:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;

    if-eqz v0, :cond_2

    .line 1433
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->s:Landroid/support/v4/app/Fragment;

    check-cast v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->unselect()V

    .line 1437
    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 1182
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 1184
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->Q:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->R:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 1186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lde/gdata/mobilesecurity/intents/Main;->Y:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x800

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 1187
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardConfiguring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1188
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v6}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardConfiguring(Z)V

    .line 1190
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/intents/Main;->setSupportProgressBarIndeterminateVisibility(Z)V

    .line 1192
    new-instance v0, Lde/gdata/mobilesecurity/mms/ProfileSelector;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/mms/ProfileSelector;-><init>(Landroid/content/Context;)V

    const-string v2, "Private"

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/mms/ProfileSelector;->apply(Ljava/lang/String;)Z

    .line 1194
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1195
    const-class v2, Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1196
    const-string v2, "selectItem"

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1198
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->startActivity(Landroid/content/Intent;)V

    .line 1201
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->finish()V

    :goto_0
    move v0, v1

    .line 1222
    :goto_1
    return v0

    .line 1204
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->s:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_2

    .line 1205
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->s:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;

    if-eqz v0, :cond_2

    .line 1206
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->s:Landroid/support/v4/app/Fragment;

    check-cast v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->onBackPressed()V

    .line 1208
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lde/gdata/mobilesecurity/intents/Main;->Y:J

    .line 1210
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardConfiguring()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1211
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getApplication()Landroid/app/Application;

    move-result-object v0

    const v2, 0x7f0d02bc

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/intents/Main;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-static {v0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1214
    :cond_3
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getApplication()Landroid/app/Application;

    move-result-object v0

    const v2, 0x7f0d037e

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/intents/Main;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-static {v0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1222
    :cond_4
    invoke-super {p0, p1, p2}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 444
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/intents/Main;->setIntent(Landroid/content/Intent;)V

    .line 445
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2069
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 2071
    iget-boolean v1, p0, Lde/gdata/mobilesecurity/intents/Main;->a:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->S:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/intents/Main;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2090
    :goto_0
    return v0

    .line 2075
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2090
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2077
    :pswitch_1
    const-class v1, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-static {p0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 2081
    :pswitch_2
    const-class v1, Lde/gdata/mobilesecurity/intents/SigCloudConnector;

    invoke-static {p0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 2086
    :pswitch_3
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->OCLgoUpdate()V

    goto :goto_0

    .line 2075
    :pswitch_data_0
    .packed-switch 0x396d
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 1239
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onPause()V

    .line 1240
    invoke-static {}, Lcom/adjust/sdk/Adjust;->onPause()V

    .line 1242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/intents/Main;->Z:Z

    .line 1243
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->y:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->y:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 1245
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->z:Landroid/support/v4/app/DialogFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->z:Landroid/support/v4/app/DialogFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 1247
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->C:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService$UpdateStatusReceiver;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1248
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->F:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1249
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->G:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1250
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->H:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1252
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->I:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1253
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 1169
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 1171
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->S:Landroid/support/v4/app/ActionBarDrawerToggle;

    if-eqz v0, :cond_0

    .line 1172
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/intents/Main;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->S:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->syncState()V

    .line 1174
    :cond_0
    return-void
.end method

.method public onRejected()V
    .locals 1

    .prologue
    .line 1457
    new-instance v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->hide()Z

    .line 1458
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->finish()V

    .line 1459
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1273
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onResume()V

    .line 1274
    invoke-static {p0}, Lcom/adjust/sdk/Adjust;->onResume(Landroid/content/Context;)V

    .line 1275
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/Main;->g()V

    .line 1277
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->Q:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    .line 1278
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/intents/Main;->a:Z

    if-eqz v0, :cond_6

    .line 1279
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->Q:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->R:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 1280
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->Q:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 1285
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->Q:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->S:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 1288
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMMSEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1289
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->hideUpdateMenuItem()V

    .line 1292
    :cond_1
    new-instance v0, Lde/gdata/mobilesecurity/intents/ae;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/intents/ae;-><init>(Lde/gdata/mobilesecurity/intents/Main;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->F:Landroid/content/BroadcastReceiver;

    .line 1298
    new-instance v0, Lde/gdata/mobilesecurity/intents/af;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/intents/af;-><init>(Lde/gdata/mobilesecurity/intents/Main;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->G:Landroid/content/BroadcastReceiver;

    .line 1331
    new-instance v0, Lde/gdata/mobilesecurity/intents/l;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/intents/l;-><init>(Lde/gdata/mobilesecurity/intents/Main;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->H:Landroid/content/BroadcastReceiver;

    .line 1343
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->C:Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService$UpdateStatusReceiver;

    invoke-static {}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/intents/Main;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1345
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1346
    const-string v1, "SELECT_MENU_ITEM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1347
    new-instance v1, Lde/gdata/mobilesecurity/intents/m;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/intents/m;-><init>(Lde/gdata/mobilesecurity/intents/Main;)V

    iput-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->I:Landroid/content/BroadcastReceiver;

    .line 1361
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->I:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1363
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 1364
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->wasLocaleChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1365
    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->setLocaleChanged(Z)V

    .line 1367
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->finish()V

    .line 1368
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1369
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1370
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1371
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1374
    :cond_2
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 1375
    invoke-static {v3, p0, v4}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .line 1376
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1379
    :cond_3
    new-instance v0, Lde/gdata/mobilesecurity/intents/n;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/intents/n;-><init>(Lde/gdata/mobilesecurity/intents/Main;)V

    new-array v1, v4, [Landroid/content/Context;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/intents/n;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1404
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->H:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "RECEIVE_SHOW_PROGRESS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/intents/Main;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1405
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->G:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "PROFILE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/intents/Main;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1406
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->F:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "de.gdata.mobilesecurity.privacy.provider.HIDDEN_COUNT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/intents/Main;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1408
    invoke-virtual {p0, v3}, Lde/gdata/mobilesecurity/intents/Main;->setSupportProgressBarIndeterminateVisibility(Z)V

    .line 1409
    sget-boolean v0, Lde/gdata/mobilesecurity/intents/Main;->ab:Z

    if-eqz v0, :cond_5

    invoke-static {p0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/Trial;->isUnregisteredTrial()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isCompassOemVersion()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1411
    :cond_4
    const-class v0, Lde/gdata/mobilesecurity/fragments/AccountManagementPreFragment;

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->a(Ljava/lang/Class;)V

    .line 1413
    :cond_5
    return-void

    .line 1282
    :cond_6
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->Q:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    goto/16 :goto_0
.end method

.method public onResumeFragments()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2533
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onResumeFragments()V

    .line 2534
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/intents/Main;->Z:Z

    .line 2535
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/intents/Main;->aa:Z

    if-eqz v0, :cond_0

    .line 2536
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/intents/Main;->aa:Z

    .line 2537
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->showMMSConnectDeferredDialog()V

    .line 2539
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 1150
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "contentFragment"

    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->s:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 1152
    const-string v0, "activeItem"

    sget v1, Lde/gdata/mobilesecurity/intents/Main;->activeItem:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1154
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1155
    return-void
.end method

.method public onServerStatus(ILandroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2675
    iget-object v3, p0, Lde/gdata/mobilesecurity/intents/Main;->y:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    .line 2676
    iget-object v3, p0, Lde/gdata/mobilesecurity/intents/Main;->y:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2677
    iput-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->y:Landroid/app/ProgressDialog;

    .line 2680
    :cond_0
    iget-object v3, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isOrangeOemVersion()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2681
    new-instance v3, Lde/gdata/mobilesecurity/util/OemOrange;

    invoke-direct {v3}, Lde/gdata/mobilesecurity/util/OemOrange;-><init>()V

    invoke-virtual {v3, p0, p1}, Lde/gdata/mobilesecurity/util/OemOrange;->setLicenseStateFromServerStatus(Landroid/content/Context;I)I

    .line 2683
    :cond_1
    iget-object v3, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isCompassOemVersion()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isOrangeOemVersion()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2684
    :cond_2
    if-nez p1, :cond_4

    .line 2788
    :cond_3
    :goto_0
    :sswitch_0
    return-void

    .line 2686
    :cond_4
    sparse-switch p1, :sswitch_data_0

    .line 2786
    invoke-static {p0, p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showErrorDialog(Landroid/support/v4/app/FragmentActivity;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->z:Landroid/support/v4/app/DialogFragment;

    goto :goto_0

    .line 2688
    :sswitch_1
    const v0, 0x7f0d021c

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showOkDialog(Landroid/support/v4/app/FragmentActivity;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->z:Landroid/support/v4/app/DialogFragment;

    goto :goto_0

    .line 2692
    :sswitch_2
    const v0, 0x7f0d0244

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showOkDialog(Landroid/support/v4/app/FragmentActivity;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->z:Landroid/support/v4/app/DialogFragment;

    .line 2694
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2695
    const v0, 0x7f0b0290

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2696
    const v0, 0x7f0b0293

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2697
    const v0, 0x7f0b0296

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2698
    const v0, 0x7f0b0299

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2699
    invoke-static {p0, p0, v3, p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->setLogMainEntries(Landroid/content/Context;Landroid/support/v4/app/FragmentActivity;Ljava/util/ArrayList;Lde/gdata/mobilesecurity/util/EulaListener;)V

    .line 2701
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isOrangeOemVersion()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2702
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v3, 0x1b

    invoke-static {v0, v3}, Lde/gdata/mobilesecurity/database/core/dao/Reports;->deleteLogEntryByMsgId(Landroid/content/Context;I)V

    .line 2704
    invoke-virtual {p0, v1, v2}, Lde/gdata/mobilesecurity/intents/Main;->selectItem(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 2710
    :sswitch_3
    const v0, 0x7f0d0247

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showOkDialog(Landroid/support/v4/app/FragmentActivity;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->z:Landroid/support/v4/app/DialogFragment;

    goto :goto_0

    .line 2714
    :sswitch_4
    const v0, 0x7f0d021d

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showOkDialog(Landroid/support/v4/app/FragmentActivity;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->z:Landroid/support/v4/app/DialogFragment;

    .line 2715
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->OCLgoUpdate()V

    goto/16 :goto_0

    .line 2720
    :sswitch_5
    if-eqz p2, :cond_10

    const-string v0, "red"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    .line 2722
    :goto_1
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->getStatuscode()I

    move-result v1

    if-ltz v1, :cond_c

    .line 2723
    invoke-static {}, Lde/gdata/mobilesecurity/inapp/plasma/Plasma;->isPlasmaAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2724
    invoke-static {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->newInstance(Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;)Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->a(Landroid/support/v7/app/ActionBarActivity;Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_0

    .line 2726
    :cond_5
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getLicensedGoogleAccount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isGoogleFreemium()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isGoogleBillingSupported()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2728
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2729
    const-class v2, Lde/gdata/mobilesecurity/intents/AccountManagementInApp;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2730
    const-string v2, "red"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2732
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/intents/Main;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2733
    :cond_7
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->getOrderText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2734
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;->getOrderText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showOKWithRestartAndOpenUrl(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->z:Landroid/support/v4/app/DialogFragment;

    goto/16 :goto_0

    .line 2737
    :cond_8
    invoke-static {}, Lde/gdata/mobilesecurity/inapp/plasma/Plasma;->isPlasmaAvailable()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2738
    new-instance v0, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;-><init>()V

    invoke-direct {p0, p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->a(Landroid/support/v7/app/ActionBarActivity;Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_0

    .line 2740
    :cond_9
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getLicensedGoogleAccount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isGoogleFreemium()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2742
    :cond_a
    const-class v0, Lde/gdata/mobilesecurity/intents/AccountManagementInApp;

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 2744
    :cond_b
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2745
    const-class v2, Lde/gdata/mobilesecurity/intents/AccountManagementRed;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2746
    const-string v2, "red"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2748
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/intents/Main;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2755
    :cond_c
    invoke-static {p0, p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showErrorDialog(Landroid/support/v4/app/FragmentActivity;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->z:Landroid/support/v4/app/DialogFragment;

    goto/16 :goto_0

    .line 2761
    :sswitch_6
    new-instance v2, Lde/gdata/mobilesecurity/util/OemOrange;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/util/OemOrange;-><init>()V

    .line 2762
    const v2, 0x7f0d03da

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/intents/Main;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x1869d

    if-ne p1, v3, :cond_d

    move v0, v1

    :cond_d
    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/OemOrange;->GetBuyUrl(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lde/gdata/mobilesecurity/updateserverconnection/util/ServerDialog;->showOKCancelAndOpenUrl(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->z:Landroid/support/v4/app/DialogFragment;

    goto/16 :goto_0

    .line 2770
    :sswitch_7
    const v2, 0x1869a

    if-ne p1, v2, :cond_f

    .line 2772
    :goto_2
    const v2, 0x18698

    if-ne p1, v2, :cond_e

    .line 2773
    const/4 v1, 0x3

    .line 2774
    :cond_e
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setOrangeLicenseState(I)V

    .line 2775
    new-instance v1, Lde/gdata/mobilesecurity/util/OemOrange;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/util/OemOrange;-><init>()V

    .line 2776
    invoke-virtual {v1, p0, p0, v0}, Lde/gdata/mobilesecurity/util/OemOrange;->Startup(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;Z)V

    goto/16 :goto_0

    .line 2770
    :cond_f
    const/4 v1, 0x2

    goto :goto_2

    :cond_10
    move-object v0, v2

    goto/16 :goto_1

    .line 2686
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_0
        0x1653 -> :sswitch_5
        0x18698 -> :sswitch_7
        0x18699 -> :sswitch_7
        0x1869a -> :sswitch_7
        0x1869d -> :sswitch_6
        0x1869e -> :sswitch_6
    .end sparse-switch
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 1230
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdFragmentActivity;->onStart()V

    .line 1232
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/Oem;->init(Landroid/content/Context;)Z

    .line 1234
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1235
    return-void
.end method

.method public selectItem(ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 1707
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->n:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1708
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->p:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->n:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lde/gdata/mobilesecurity/intents/Main;->a(Landroid/view/View;ILandroid/os/Bundle;)V

    .line 1710
    :cond_0
    return-void
.end method

.method public setNavigationMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1093
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/Main;->j()V

    .line 1094
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardConfiguring()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_4

    .line 1095
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->O:Ljava/lang/Integer;

    const-string v1, "Private"

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getPhoneType()I

    move-result v0

    sget-object v1, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions$PhoneTypes;->CORPORATE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    move v1, v2

    .line 1097
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1098
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile$Types;->PRIVATE:Ljava/lang/Integer;

    if-ne v0, v3, :cond_1

    .line 1099
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1100
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->M:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1101
    iget-object v3, p0, Lde/gdata/mobilesecurity/intents/Main;->N:Ljava/util/ArrayList;

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v1, v0

    .line 1097
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1103
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->M:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->O:Ljava/lang/Integer;

    goto :goto_1

    .line 1107
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_3

    .line 1108
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f030091

    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main;->L:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->K:Landroid/widget/ArrayAdapter;

    .line 1110
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->K:Landroid/widget/ArrayAdapter;

    const v1, 0x7f03009b

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1112
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setNavigationMode(I)V

    .line 1113
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->K:Landroid/widget/ArrayAdapter;

    new-instance v2, Lde/gdata/mobilesecurity/intents/ac;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/intents/ac;-><init>(Lde/gdata/mobilesecurity/intents/Main;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/support/v7/app/ActionBar$OnNavigationListener;)V

    .line 1125
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->O:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 1130
    :goto_2
    return-void

    .line 1127
    :cond_3
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setNavigationMode(I)V

    goto :goto_2

    .line 1129
    :cond_4
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setNavigationMode(I)V

    goto :goto_2
.end method

.method public setProfile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2358
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardConfiguring()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMMSEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2359
    invoke-static {p1}, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->getArrayListDevicePolicies(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2361
    const-string v1, "Private"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2362
    invoke-static {p1, v6}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->setCameraState(Landroid/content/Context;Z)V

    .line 2364
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/mdm/DevicePolicy;

    .line 2365
    new-instance v2, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;

    invoke-direct {v2, p1}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;-><init>(Landroid/content/Context;)V

    .line 2366
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->getPolicyID()I

    move-result v0

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->loadDevicePolicyReactionItemFromDB(I)V

    .line 2367
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->getProfileId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2368
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->getWlanSsid()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v6}, Lde/gdata/mobilesecurity/util/MyUtil;->disconnectFromWifi(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2372
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/mdm/DevicePolicy;

    .line 2373
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->checkPolicy(I)V

    .line 2374
    new-instance v2, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;

    invoke-direct {v2, p1}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;-><init>(Landroid/content/Context;)V

    .line 2375
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->getPolicyID()I

    move-result v0

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->loadDevicePolicyReactionItemFromDB(I)V

    goto :goto_1

    .line 2380
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardConfiguring()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2381
    new-instance v0, Lde/gdata/mobilesecurity/mms/ProfileSelector;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/mms/ProfileSelector;-><init>(Landroid/content/Context;)V

    .line 2384
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/intents/Main;->setSupportProgressBarIndeterminateVisibility(Z)V

    .line 2386
    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/mms/ProfileSelector;->apply(Ljava/lang/String;)Z

    .line 2388
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->finish()V

    .line 2390
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/gdata/mobilesecurity/intents/Main;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2391
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2392
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->startActivity(Landroid/content/Intent;)V

    .line 2394
    :cond_3
    return-void
.end method

.method public showMMSConnectDeferredDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 2508
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/intents/Main;->Z:Z

    if-eqz v0, :cond_0

    .line 2509
    iput-boolean v7, p0, Lde/gdata/mobilesecurity/intents/Main;->aa:Z

    .line 2529
    :goto_0
    return-void

    .line 2511
    :cond_0
    const v0, 0x7f0d0245

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0d038f

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f0d038e

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0d021e

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lde/gdata/mobilesecurity/intents/v;

    invoke-direct {v5, p0}, Lde/gdata/mobilesecurity/intents/v;-><init>(Lde/gdata/mobilesecurity/intents/Main;)V

    new-instance v6, Lde/gdata/mobilesecurity/intents/w;

    invoke-direct {v6, p0}, Lde/gdata/mobilesecurity/intents/w;-><init>(Lde/gdata/mobilesecurity/intents/Main;)V

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    .line 2526
    invoke-virtual {v0, v7}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 2527
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "showMMSConnectDeferredDialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showNotAllowedOutOfTrialPeriodDialog(Landroid/support/v7/app/ActionBarActivity;)V
    .locals 7

    .prologue
    .line 2584
    const v0, 0x7f0d0249

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2585
    const v0, 0x7f0d023c

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2586
    const-string v0, ""

    .line 2588
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMMSEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2589
    const v0, 0x7f0d04d1

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2590
    const v0, 0x7f0d0240

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2606
    :goto_0
    const/4 v6, 0x0

    .line 2608
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMMSEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v6, Lde/gdata/mobilesecurity/intents/x;

    invoke-direct {v6, p0}, Lde/gdata/mobilesecurity/intents/x;-><init>(Lde/gdata/mobilesecurity/intents/Main;)V

    .line 2615
    :cond_0
    const v0, 0x7f0d0245

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lde/gdata/mobilesecurity/intents/y;

    invoke-direct {v5, p0, p1}, Lde/gdata/mobilesecurity/intents/y;-><init>(Lde/gdata/mobilesecurity/intents/Main;Landroid/support/v7/app/ActionBarActivity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    .line 2641
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 2642
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "showNotAllowedOutOfTrialPeriodDialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 2644
    return-void

    .line 2591
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isGoogleFreemium()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2592
    const v0, 0x7f0d0283

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2593
    const v0, 0x7f0d0285

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2594
    const v0, 0x7f0d0284

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 2596
    :cond_2
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/Trial;->isProtectFeaturesUntilRegistration()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2597
    const v0, 0x7f0d049f

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2599
    :cond_3
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/Trial;->isUnregisteredTrial()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2600
    const v0, 0x7f0d0514

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2602
    :cond_4
    const v0, 0x7f0d0513

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public showScanOutdatedDialog(Landroid/content/Context;I)Landroid/support/v4/app/DialogFragment;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1604
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->getCustomNotificationQueryTexts(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v0

    .line 1606
    const v1, 0x7f0d00f4

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/intents/Main;->getString(I)Ljava/lang/String;

    move-result-object v1

    aget-object v2, v0, v7

    const/4 v3, 0x1

    aget-object v3, v0, v3

    const/4 v4, 0x2

    aget-object v4, v0, v4

    new-instance v5, Lde/gdata/mobilesecurity/intents/r;

    invoke-direct {v5, p0, p2, p1}, Lde/gdata/mobilesecurity/intents/r;-><init>(Lde/gdata/mobilesecurity/intents/Main;ILandroid/content/Context;)V

    new-instance v6, Lde/gdata/mobilesecurity/intents/s;

    invoke-direct {v6, p0}, Lde/gdata/mobilesecurity/intents/s;-><init>(Lde/gdata/mobilesecurity/intents/Main;)V

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    .line 1629
    invoke-virtual {v0, v7}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 1630
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "showScanOutdatedDialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1631
    return-object v0
.end method

.method public showSigsOutdatedDialog()Landroid/support/v4/app/DialogFragment;
    .locals 7

    .prologue
    .line 1584
    const v0, 0x7f0d00f4

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0d03d2

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f0d03cd

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0d021e

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lde/gdata/mobilesecurity/intents/p;

    invoke-direct {v5, p0}, Lde/gdata/mobilesecurity/intents/p;-><init>(Lde/gdata/mobilesecurity/intents/Main;)V

    new-instance v6, Lde/gdata/mobilesecurity/intents/q;

    invoke-direct {v6, p0}, Lde/gdata/mobilesecurity/intents/q;-><init>(Lde/gdata/mobilesecurity/intents/Main;)V

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    .line 1597
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 1598
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "showSigsOutdatedDialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1600
    return-object v0
.end method

.method public startUpdateService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2403
    const v0, 0x7f0d0038

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2405
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2406
    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2407
    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2408
    const-string v1, "caller"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2410
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2411
    return-void
.end method

.method protected updateCustomizedSetupOptionsOnSoftwareUpdate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1557
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;->getVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 1558
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getLastVersionCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 1559
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;->getVersion()I

    move-result v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->getLastVersionCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1560
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MyPackageManagerUtil;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->setLastVersionCode(I)V

    .line 1562
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->convertStreamToSB(Ljava/io/InputStream;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1564
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->t:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->setCustomizedSetupOptions(Ljava/lang/String;Z)V

    .line 1565
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main;->v:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setCustomizedSetupOptions(Ljava/lang/String;Z)V

    .line 1566
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1567
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lde/gdata/mobilesecurity/intents/o;

    invoke-direct {v2, p0, v0}, Lde/gdata/mobilesecurity/intents/o;-><init>(Lde/gdata/mobilesecurity/intents/Main;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1581
    :cond_0
    return-void
.end method
