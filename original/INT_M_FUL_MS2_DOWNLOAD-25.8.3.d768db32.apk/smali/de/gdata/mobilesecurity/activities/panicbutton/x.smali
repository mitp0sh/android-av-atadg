.class Lde/gdata/mobilesecurity/activities/panicbutton/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;I)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/x;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    iput p2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/x;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    iget v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/x;->a:I

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->a(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;I)I

    .line 286
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/x;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-static {v0, p1}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->a(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;Landroid/view/View;)V

    .line 287
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/x;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->unselectOthers()V

    .line 288
    return-void
.end method
