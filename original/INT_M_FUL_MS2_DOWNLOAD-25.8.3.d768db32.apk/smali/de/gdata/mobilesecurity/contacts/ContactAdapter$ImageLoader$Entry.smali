.class Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader$Entry;
.super Landroid/util/Pair;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/Integer;",
        "Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;Ljava/lang/Integer;Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader$Entry;->this$1:Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader;

    .line 58
    invoke-direct {p0, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 63
    instance-of v0, p1, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader$Entry;

    if-eqz v0, :cond_0

    .line 64
    check-cast p1, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader$Entry;

    iget-object v0, p1, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader$Entry;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$ImageLoader$Entry;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
