.class Lde/gdata/mobilesecurity/activities/antitheft/d;
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
    .line 222
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/antitheft/d;->a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 225
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/d;->a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/antitheft/d;->a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lde/gdata/mobilesecurity/intents/ActionManagerRegisterActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->startActivity(Landroid/content/Intent;)V

    .line 226
    return-void
.end method
