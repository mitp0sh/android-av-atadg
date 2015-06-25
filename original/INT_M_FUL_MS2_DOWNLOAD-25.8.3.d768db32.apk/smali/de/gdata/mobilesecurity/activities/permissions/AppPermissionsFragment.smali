.class public Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;
.super Landroid/support/v4/app/ListFragment;
.source "SourceFile"


# static fields
.field public static final REQUEST_UNISTALL:I = 0x29b


# instance fields
.field private a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/SortedSet",
            "<",
            "Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 403
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    return-object v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .prologue
    .line 400
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/SortedSet;

    new-instance v0, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;

    const-string v1, ""

    const-string v4, ""

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v7, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 401
    return-void
.end method

.method private a()Z
    .locals 4

    .prologue
    .line 79
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 80
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 81
    const/4 v0, 0x0

    .line 82
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 83
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 86
    goto :goto_0

    .line 87
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 199
    const-string v0, "on uninstall"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 201
    const/4 v1, 0x0

    .line 204
    :try_start_0
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 209
    :goto_0
    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 213
    :cond_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->d:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public fillPermissionsBeanList(Landroid/content/Context;)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const v7, 0x7f0200f1

    const/4 v6, 0x4

    const/16 v5, 0x8

    .line 216
    new-instance v0, Lde/gdata/mobilesecurity/activities/permissions/c;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/permissions/c;-><init>(Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;)V

    .line 226
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->d:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->d:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->d:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->d:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->d:Ljava/util/Map;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->d:Ljava/util/Map;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->d:Ljava/util/Map;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->d:Ljava/util/Map;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->d:Ljava/util/Map;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->d:Ljava/util/Map;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->d:Ljava/util/Map;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->d:Ljava/util/Map;

    const v2, 0x7fffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_21

    .line 240
    const-string v0, "android.permission.CALL_PHONE"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0437

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d0421

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f02010c

    invoke-direct {p0, v8, v0, v1, v3}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(ILjava/lang/String;Ljava/lang/String;I)V

    .line 239
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 245
    :cond_0
    const-string v0, "android.permission.PROCESS_OUTGOING_CALLS"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    const-string v0, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d043d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f02010c

    invoke-direct {p0, v8, v0, v1, v3}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 250
    :cond_1
    const-string v0, "android.permission.READ_PHONE_STATE"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d0448

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f02010c

    invoke-direct {p0, v8, v0, v1, v3}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 254
    :cond_2
    const-string v0, "android.permission.SEND_SMS"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d043b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d044e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0200f3

    invoke-direct {p0, v9, v0, v1, v3}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 258
    :cond_3
    const-string v0, "android.permission.RECEIVE_SMS"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 259
    const-string v0, "android.permission.RECEIVE_SMS"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d044c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0200f3

    invoke-direct {p0, v9, v0, v1, v3}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 262
    :cond_4
    const-string v0, "android.permission.READ_SMS"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 263
    const-string v0, "android.permission.READ_SMS"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d0449

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0200f3

    invoke-direct {p0, v9, v0, v1, v3}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 266
    :cond_5
    const-string v0, "android.permission.WRITE_SMS"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 267
    const-string v0, "android.permission.WRITE_SMS"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d0454

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0200f3

    invoke-direct {p0, v9, v0, v1, v3}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 270
    :cond_6
    const-string v0, "android.permission.INTERNET"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 271
    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d0424

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v0, v1, v7}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 274
    :cond_7
    const-string v0, "com.android.vending.CHECK_LICENSE"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 275
    const-string v0, "com.android.vending.CHECK_LICENSE"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d0423

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v0, v1, v7}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 278
    :cond_8
    const-string v0, "com.android.vending.BILLING"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 279
    const-string v0, "com.android.vending.BILLING"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d041f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v0, v1, v7}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 282
    :cond_9
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 283
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d041b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v0, v1, v7}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 287
    :cond_a
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 288
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d041c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v0, v1, v7}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 292
    :cond_b
    const-string v0, "android.permission.CHANGE_WIFI_STATE"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 293
    const-string v0, "android.permission.CHANGE_WIFI_STATE"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d0422

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v0, v1, v7}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 297
    :cond_c
    const-string v0, "android.permission.READ_CONTACTS"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 298
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0441

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d043f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0200f2

    invoke-direct {p0, v6, v0, v1, v3}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 302
    :cond_d
    const-string v0, "android.permission.WRITE_CALL_LOG"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 303
    const-string v0, "android.permission.WRITE_CALL_LOG"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d0451

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0200f2

    invoke-direct {p0, v6, v0, v1, v3}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 306
    :cond_e
    const-string v0, "android.permission.READ_CALL_LOG"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 307
    const-string v0, "android.permission.READ_CALL_LOG"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d043e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0200f2

    invoke-direct {p0, v6, v0, v1, v3}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 310
    :cond_f
    const-string v0, "android.permission.WRITE_CONTACTS"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 311
    const-string v0, "android.permission.WRITE_CONTACTS"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d0450

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0200f2

    invoke-direct {p0, v6, v0, v1, v3}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 314
    :cond_10
    const-string v0, "android.permission.READ_LOGS"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 315
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0446

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d0444

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0200f2

    invoke-direct {p0, v6, v0, v1, v3}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 318
    :cond_11
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 320
    :cond_12
    const/4 v0, 0x3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d042d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d042f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f020118

    invoke-direct {p0, v0, v1, v3, v4}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 324
    :cond_13
    const-string v0, "com.android.browser.permission.READ_HISTORY_BOOKMARKS"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 325
    const/4 v0, 0x5

    const-string v1, "com.android.browser.permission.READ_HISTORY_BOOKMARKS"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0443

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0200f0

    invoke-direct {p0, v0, v1, v3, v4}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 329
    :cond_14
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 330
    const/4 v0, 0x6

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0452

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f02011d

    invoke-direct {p0, v0, v1, v3, v4}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 334
    :cond_15
    const-string v0, "android.permission.GET_TASKS"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 335
    const/16 v0, 0x9

    const-string v1, "android.permission.GET_TASKS"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0426

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0200ef

    invoke-direct {p0, v0, v1, v3, v4}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 338
    :cond_16
    const-string v0, "android.permission.REORDER_TASKS"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 339
    const/16 v0, 0x9

    const-string v1, "android.permission.REORDER_TASKS"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d044d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0200ef

    invoke-direct {p0, v0, v1, v3, v4}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 342
    :cond_17
    const-string v0, "android.permission.RECEIVE_BOOT_COMPLETED"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 343
    const/16 v0, 0x9

    const-string v1, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d044b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0200ef

    invoke-direct {p0, v0, v1, v3, v4}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 347
    :cond_18
    const-string v0, "android.permission.GET_ACCOUNTS"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 348
    const/4 v0, 0x7

    const-string v1, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0425

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f020062

    invoke-direct {p0, v0, v1, v3, v4}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 352
    :cond_19
    const-string v0, "android.permission.MANAGE_ACCOUNTS"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 353
    const/4 v0, 0x7

    const-string v1, "android.permission.MANAGE_ACCOUNTS"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0434

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f020062

    invoke-direct {p0, v0, v1, v3, v4}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 356
    :cond_1a
    const-string v0, "android.permission.AUTHENTICATE_ACCOUNTS"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 357
    const/4 v0, 0x7

    const-string v1, "android.permission.AUTHENTICATE_ACCOUNTS"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d041e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f020062

    invoke-direct {p0, v0, v1, v3, v4}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 361
    :cond_1b
    const-string v0, "android.permission.USE_CREDENTIALS"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 362
    const/4 v0, 0x7

    const-string v1, "android.permission.USE_CREDENTIALS"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d044f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f020062

    invoke-direct {p0, v0, v1, v3, v4}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 365
    :cond_1c
    const-string v0, "android.permission.WRITE_SYNC_SETTINGS"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 366
    const/16 v0, 0xa

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0455

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f02015d

    invoke-direct {p0, v0, v1, v3, v4}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 370
    :cond_1d
    const-string v0, "android.permission.READ_SYNC_SETTINGS"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 371
    const/16 v0, 0xa

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d044a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f02015d

    invoke-direct {p0, v0, v1, v3, v4}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 375
    :cond_1e
    const-string v0, "android.permission.BROADCAST_STICKY"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 376
    const/16 v0, 0xb

    const-string v1, "android.permission.BROADCAST_STICKY"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0420

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f02011c

    invoke-direct {p0, v0, v1, v3, v4}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 379
    :cond_1f
    const-string v0, "android.permission.WRITE_SETTINGS"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 380
    const/16 v0, 0xb

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0453

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f02011c

    invoke-direct {p0, v0, v1, v3, v4}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 385
    :cond_20
    const v3, 0x7fffffff

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v0, v1, v4}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 390
    :cond_21
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 391
    const/4 v1, 0x0

    move v2, v1

    :goto_2
    array-length v1, v0

    if-ge v2, v1, :cond_24

    .line 392
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->d:Ljava/util/Map;

    aget-object v3, v0, v2

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/SortedSet;

    .line 393
    invoke-interface {v1}, Ljava/util/SortedSet;->size()I

    move-result v3

    if-lt v3, v8, :cond_22

    invoke-interface {v1}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 394
    :cond_22
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->d:Ljava/util/Map;

    aget-object v3, v0, v2

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    :cond_23
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 397
    :cond_24
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 186
    new-instance v0, Lde/gdata/mobilesecurity/activities/permissions/d;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lde/gdata/mobilesecurity/activities/permissions/d;-><init>(Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 187
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 191
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/ListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 192
    const/16 v0, 0x29b

    if-ne p1, v0, :cond_0

    .line 193
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->b()V

    .line 196
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "PACKAGE_NAME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->b:Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 76
    :goto_0
    return-void

    .line 67
    :cond_0
    :try_start_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->b:Ljava/lang/String;

    const/16 v2, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/util/Vector;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a:Ljava/util/Vector;

    .line 69
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->d:Ljava/util/Map;

    .line 70
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->fillPermissionsBeanList(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 97
    const v0, 0x7f03002b

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 99
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 101
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 102
    invoke-static {v8, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 104
    const v0, 0x7f0b0104

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 105
    const v1, 0x7f0b0105

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 106
    const v2, 0x7f0b0106

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 107
    const v3, 0x7f0b010a

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 108
    const v4, 0x7f0b010b

    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 110
    iget-object v5, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockPermissions()I

    move-result v5

    and-int/lit16 v5, v5, 0x100

    if-nez v5, :cond_1

    .line 111
    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 114
    :goto_0
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->a()Z

    move-result v5

    if-nez v5, :cond_2

    .line 115
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 135
    :goto_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getPhoneType()I

    move-result v0

    sget-object v1, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions$PhoneTypes;->CORPORATE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardTeenagerActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    :cond_0
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 141
    :goto_2
    new-instance v0, Lde/gdata/mobilesecurity/activities/permissions/a;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/permissions/a;-><init>(Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    new-instance v0, Lde/gdata/mobilesecurity/activities/permissions/b;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/permissions/b;-><init>(Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    return-object v8

    .line 113
    :cond_1
    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 119
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 120
    iget-object v9, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->b:Ljava/lang/String;

    const/16 v10, 0x1000

    invoke-virtual {v5, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 121
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 122
    iget-object v11, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 124
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 127
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0d000e

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 138
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardTeenagerActive()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move v0, v7

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_5
    move v0, v6

    goto :goto_3
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 93
    return-void
.end method
