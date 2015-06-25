.class Lde/gdata/mobilesecurity/intents/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/intents/Main;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/Main;)V
    .locals 0

    .prologue
    .line 1587
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/p;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 1590
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/p;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/Main;->OCLgoUpdate()V

    .line 1591
    return-void
.end method
