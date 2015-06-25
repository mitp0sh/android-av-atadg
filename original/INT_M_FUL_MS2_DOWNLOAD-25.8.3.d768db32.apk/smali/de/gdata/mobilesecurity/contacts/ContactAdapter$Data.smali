.class Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field m_checked:Z

.field m_contact:Lde/gdata/mobilesecurity/contacts/Contact;

.field m_contactStore:Lde/gdata/mobilesecurity/contacts/ContactStore;

.field m_displayName:Ljava/lang/String;

.field private m_id:I

.field m_photo:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lde/gdata/mobilesecurity/contacts/ContactAdapter;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/contacts/ContactAdapter;ILandroid/content/Context;)V
    .locals 4

    .prologue
    .line 374
    iput-object p1, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;->this$0:Lde/gdata/mobilesecurity/contacts/ContactAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    new-instance v0, Lde/gdata/mobilesecurity/contacts/ContactStore;

    invoke-direct {v0, p3}, Lde/gdata/mobilesecurity/contacts/ContactStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;->m_contactStore:Lde/gdata/mobilesecurity/contacts/ContactStore;

    .line 376
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;->m_contactStore:Lde/gdata/mobilesecurity/contacts/ContactStore;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getContact(J)Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v0

    .line 377
    if-nez v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;->m_contactStore:Lde/gdata/mobilesecurity/contacts/ContactStore;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactStore;->getNullContact()Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v0

    .line 378
    :cond_0
    iput p2, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;->m_id:I

    .line 379
    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;->m_contact:Lde/gdata/mobilesecurity/contacts/Contact;

    .line 380
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;->m_displayName:Ljava/lang/String;

    .line 381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;->m_checked:Z

    .line 382
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;->m_displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;->m_id:I

    return v0
.end method

.method public declared-synchronized getPhoto()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 363
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;->m_contact:Lde/gdata/mobilesecurity/contacts/Contact;

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;->m_contactStore:Lde/gdata/mobilesecurity/contacts/ContactStore;

    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;->m_contact:Lde/gdata/mobilesecurity/contacts/Contact;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/contacts/ContactStore;->fetchContactData(Lde/gdata/mobilesecurity/contacts/Contact;)V

    .line 365
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;->m_contact:Lde/gdata/mobilesecurity/contacts/Contact;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/Contact;->getPhoto()[B

    move-result-object v0

    .line 366
    if-eqz v0, :cond_0

    .line 367
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;->m_contact:Lde/gdata/mobilesecurity/contacts/Contact;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;->m_photo:Landroid/graphics/drawable/Drawable;

    .line 369
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;->m_contact:Lde/gdata/mobilesecurity/contacts/Contact;

    .line 371
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;->m_photo:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isPhotoLoaded()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;->m_photo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
