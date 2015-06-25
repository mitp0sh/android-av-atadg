.class Lde/gdata/mobilesecurity/activities/panicbutton/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/z;->a:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 433
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 434
    return-void
.end method
