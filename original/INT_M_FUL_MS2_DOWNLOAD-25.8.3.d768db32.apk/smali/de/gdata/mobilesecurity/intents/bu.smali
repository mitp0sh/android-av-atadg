.class Lde/gdata/mobilesecurity/intents/bu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lde/gdata/mobilesecurity/intents/ProfileSelector;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/ProfileSelector;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/bu;->b:Lde/gdata/mobilesecurity/intents/ProfileSelector;

    iput-object p2, p0, Lde/gdata/mobilesecurity/intents/bu;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 141
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/bu;->b:Lde/gdata/mobilesecurity/intents/ProfileSelector;

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/bu;->b:Lde/gdata/mobilesecurity/intents/ProfileSelector;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/ProfileSelector;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/bu;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lde/gdata/mobilesecurity/intents/ProfileSelector;->setProfile(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/bu;->b:Lde/gdata/mobilesecurity/intents/ProfileSelector;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/ProfileSelector;->finish()V

    .line 144
    return-void
.end method
