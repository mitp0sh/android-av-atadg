.class Lde/gdata/mobilesecurity/activities/panicbutton/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

.field final synthetic b:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment$PanicProfileAdapter;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment$PanicProfileAdapter;Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/t;->b:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment$PanicProfileAdapter;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/t;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 291
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 292
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/t;->b:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment$PanicProfileAdapter;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment$PanicProfileAdapter;->b:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 293
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 294
    const-string v1, "widgetId"

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/t;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->getWidgetId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/t;->b:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment$PanicProfileAdapter;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment$PanicProfileAdapter;->b:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 296
    return-void
.end method
