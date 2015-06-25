.class Lde/gdata/mobilesecurity/activities/panicbutton/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;I)V
    .locals 0

    .prologue
    .line 587
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/ac;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;

    iput p2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/ac;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 590
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/ac;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->a(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;->getCount()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 591
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/ac;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->i(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/ac;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;

    iget v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/ac;->a:I

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;->getItem(I)Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->deletePanicAction(Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;)V

    .line 592
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/ac;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->a(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;->notifyDataSetChanged()V

    .line 597
    :goto_0
    return-void

    .line 594
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/ac;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/ac;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    const v2, 0x7f0d0403

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
