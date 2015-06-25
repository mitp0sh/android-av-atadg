.class Lde/gdata/mobilesecurity/activities/usagecontrol/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

.field final synthetic b:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/an;->b:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/an;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 357
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 358
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/an;->b:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;->b:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 359
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 360
    const-string v1, "lockedLocation"

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/an;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 362
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/an;->b:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;->b:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 363
    return-void
.end method
