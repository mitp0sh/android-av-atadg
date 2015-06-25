.class Lde/gdata/mobilesecurity/activities/filter/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/af;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/af;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 230
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/af;->a:Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/NewFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->hideKeyboard(Landroid/content/Context;)V

    .line 231
    return-void
.end method
