.class Lde/gdata/mobilesecurity/activities/panicbutton/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/v;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/v;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/v;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 210
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/v;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 211
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/v;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->backToFront()V

    .line 212
    return-void
.end method
