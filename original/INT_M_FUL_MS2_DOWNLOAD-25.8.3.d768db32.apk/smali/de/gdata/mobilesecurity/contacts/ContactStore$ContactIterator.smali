.class public Lde/gdata/mobilesecurity/contacts/ContactStore$ContactIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lde/gdata/mobilesecurity/contacts/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field m_cur:Landroid/database/Cursor;

.field final synthetic this$0:Lde/gdata/mobilesecurity/contacts/ContactStore;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/contacts/ContactStore;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lde/gdata/mobilesecurity/contacts/ContactStore$ContactIterator;->this$0:Lde/gdata/mobilesecurity/contacts/ContactStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    iput-object p2, p0, Lde/gdata/mobilesecurity/contacts/ContactStore$ContactIterator;->m_cur:Landroid/database/Cursor;

    .line 382
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactStore$ContactIterator;->m_cur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 406
    return-void
.end method

.method public count()I
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactStore$ContactIterator;->m_cur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactStore$ContactIterator;->m_cur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/ContactStore$ContactIterator;->m_cur:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    .line 387
    :goto_0
    return v0

    .line 386
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lde/gdata/mobilesecurity/contacts/Contact;
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactStore$ContactIterator;->m_cur:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    new-instance v0, Lde/gdata/mobilesecurity/contacts/Contact;

    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/ContactStore$ContactIterator;->m_cur:Landroid/database/Cursor;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/contacts/Contact;-><init>(Landroid/database/Cursor;)V

    .line 397
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 376
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/contacts/ContactStore$ContactIterator;->next()Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    .prologue
    .line 402
    return-void
.end method
