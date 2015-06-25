.class Lde/gdata/mobilesecurity/activities/panicbutton/ab;
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
    .line 573
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/ab;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;

    iput p2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/ab;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 576
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/ab;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/ab;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;

    iget v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/ab;->a:I

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;->getItem(I)Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    move-result-object v1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->a(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;)V

    .line 577
    return-void
.end method
