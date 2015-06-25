.class public Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PERMISSION_CATEGORY_ACCOUNTS:I = 0x7

.field public static final PERMISSION_CATEGORY_APPS:I = 0x9

.field public static final PERMISSION_CATEGORY_AUDIO:I = 0xd

.field public static final PERMISSION_CATEGORY_BOOKMARKS:I = 0x5

.field public static final PERMISSION_CATEGORY_CALL:I = 0x1

.field public static final PERMISSION_CATEGORY_CALL_LOG:I = 0x4

.field public static final PERMISSION_CATEGORY_LOCATION:I = 0x3

.field public static final PERMISSION_CATEGORY_NETWORK:I = 0x8

.field public static final PERMISSION_CATEGORY_SMS:I = 0x2

.field public static final PERMISSION_CATEGORY_STORAGE:I = 0x6

.field public static final PERMISSION_CATEGORY_SYNCHRONISATION:I = 0xa

.field public static final PERMISSION_CATEGORY_SYSTEM:I = 0xb

.field public static final PERMISSION_CATEGORY_UNKNOWN:I = 0x7fffffff

.field public static final PERMISSION_CATEGORY_VIDEO:I = 0xc


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->g:Ljava/util/Vector;

    .line 35
    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->a:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->b:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->d:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->c:Ljava/lang/String;

    .line 39
    const v0, 0x7fffffff

    iput v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->e:I

    .line 40
    iput p5, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->f:I

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->g:Ljava/util/Vector;

    .line 45
    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->a:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->b:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->d:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->c:Ljava/lang/String;

    .line 49
    iput p6, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->e:I

    .line 50
    iput p5, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->f:I

    .line 51
    return-void
.end method


# virtual methods
.method public addToList(Landroid/content/pm/PackageInfo;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->g:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->e:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->f:I

    return v0
.end method

.method public getList()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->g:Ljava/util/Vector;

    return-object v0
.end method

.method public getPermissionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->d:Ljava/lang/String;

    return-object v0
.end method
