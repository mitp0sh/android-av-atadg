.class Lde/gdata/mobilesecurity/intents/bs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/intents/ProfileSelector;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/ProfileSelector;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/bs;->a:Lde/gdata/mobilesecurity/intents/ProfileSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/bs;->a:Lde/gdata/mobilesecurity/intents/ProfileSelector;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/ProfileSelector;->finish()V

    .line 154
    return-void
.end method
