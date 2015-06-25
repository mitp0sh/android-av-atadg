.class Lde/gdata/mobilesecurity/intents/u;
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
    .line 857
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/u;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/u;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/Main;->OCLgoUpdate()V

    .line 861
    return-void
.end method
