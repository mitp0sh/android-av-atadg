.class Lde/gdata/mobilesecurity/activities/filter/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

.field final synthetic b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/k;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/filter/k;->a:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 430
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 431
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/k;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lde/gdata/mobilesecurity/activities/filter/NewFilterActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 432
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 433
    const-string v1, "filterGroup"

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/k;->a:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 435
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/k;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->b:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 436
    return-void
.end method
