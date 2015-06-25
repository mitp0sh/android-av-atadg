.class Lde/gdata/mobilesecurity/activities/filter/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/aa;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 525
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 526
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/aa;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 527
    return-void
.end method
