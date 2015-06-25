.class Lde/gdata/mobilesecurity/activities/kidsguard/bg;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1058
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bg;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    .line 1059
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 1060
    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bg;->b:Ljava/util/List;

    .line 1061
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bg;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 1065
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bg;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method
