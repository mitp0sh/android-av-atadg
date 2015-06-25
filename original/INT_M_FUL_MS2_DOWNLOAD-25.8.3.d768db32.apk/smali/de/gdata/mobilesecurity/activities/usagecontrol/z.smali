.class Lde/gdata/mobilesecurity/activities/usagecontrol/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/z;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/z;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 342
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/z;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->hideKeyboard(Landroid/content/Context;)V

    .line 343
    return-void
.end method
