.class Lde/gdata/mobilesecurity/activities/permissions/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/permissions/c;->a:Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;)I
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 223
    :goto_0
    return v0

    .line 221
    :cond_0
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 222
    :cond_1
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    .line 223
    :cond_2
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 216
    check-cast p1, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;

    check-cast p2, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;

    invoke-virtual {p0, p1, p2}, Lde/gdata/mobilesecurity/activities/permissions/c;->a(Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;)I

    move-result v0

    return v0
.end method
