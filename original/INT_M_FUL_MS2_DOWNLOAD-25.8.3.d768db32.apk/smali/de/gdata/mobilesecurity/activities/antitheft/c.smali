.class Lde/gdata/mobilesecurity/activities/antitheft/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/antitheft/c;->a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/c;->a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antitheft/c;->a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->finishActionMode(Landroid/app/Activity;I)V

    .line 161
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/c;->a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->hideKeyboard(Landroid/content/Context;)V

    .line 162
    return-void
.end method
