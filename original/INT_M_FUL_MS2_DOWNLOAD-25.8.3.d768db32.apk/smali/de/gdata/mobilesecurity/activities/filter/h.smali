.class Lde/gdata/mobilesecurity/activities/filter/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/filter/g;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/filter/g;)V
    .locals 0

    .prologue
    .line 736
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/h;->a:Lde/gdata/mobilesecurity/activities/filter/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 740
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/h;->a:Lde/gdata/mobilesecurity/activities/filter/g;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/filter/g;->b:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setActivated(Z)V

    .line 741
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/h;->a:Lde/gdata/mobilesecurity/activities/filter/g;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/filter/g;->c:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->c:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->notifyDataSetChanged()V

    .line 742
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 743
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/h;->a:Lde/gdata/mobilesecurity/activities/filter/g;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->getLocation(Landroid/content/Context;)Landroid/location/Location;

    .line 744
    return-void
.end method
