.class Lde/gdata/mobilesecurity/activities/usagecontrol/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ap;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ap;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ap;->b:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ap;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ap;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->setActivated(Z)V

    .line 394
    return-void
.end method
