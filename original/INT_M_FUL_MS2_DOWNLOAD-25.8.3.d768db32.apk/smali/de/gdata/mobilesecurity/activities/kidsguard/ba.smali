.class Lde/gdata/mobilesecurity/activities/kidsguard/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ba;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ba;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->b(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ba;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->b(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 419
    return-void
.end method
