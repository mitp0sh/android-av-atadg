.class Lde/gdata/mobilesecurity/activities/usagecontrol/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

.field final synthetic d:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;ILandroid/widget/CheckBox;Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ao;->d:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;

    iput p2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ao;->a:I

    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ao;->b:Landroid/widget/CheckBox;

    iput-object p4, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ao;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item clicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ao;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ao;->d:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;->b:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;

    iget v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ao;->a:I

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 369
    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ao;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->c()Landroid/support/v7/view/ActionMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ao;->d:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;->b:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    new-instance v1, Lde/gdata/mobilesecurity/activities/usagecontrol/ar;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ao;->d:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;

    iget-object v2, v2, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;->b:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ao;->d:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;

    iget-object v3, v3, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;->b:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;

    iget-object v3, v3, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;

    invoke-direct {v1, v2, v3}, Lde/gdata/mobilesecurity/activities/usagecontrol/ar;-><init>(Landroid/app/Activity;Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->a(Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;

    .line 375
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ao;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->b()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ao;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 376
    :cond_1
    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ao;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    .line 377
    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 378
    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->c()Landroid/support/v7/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 379
    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->c()Landroid/support/v7/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 381
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->a(Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;

    .line 383
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ao;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->b()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/ao;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    :cond_4
    return-void
.end method
