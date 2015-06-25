.class Lde/gdata/mobilesecurity/activities/panicbutton/y;
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
    .line 417
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/y;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/y;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->onListClicked()V

    .line 422
    return-void
.end method
