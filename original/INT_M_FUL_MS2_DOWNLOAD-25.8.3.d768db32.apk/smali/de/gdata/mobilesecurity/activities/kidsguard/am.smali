.class Lde/gdata/mobilesecurity/activities/kidsguard/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/am;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/am;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-static {v0, p1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->a(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;I)V

    .line 190
    return-void
.end method
