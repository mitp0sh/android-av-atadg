.class public Lde/gdata/mobilesecurity/sms/SMSStore;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SMS_CONVERSATIONS:Landroid/net/Uri;

.field public static final SMS_URI:Landroid/net/Uri;


# instance fields
.field a:[Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private final c:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/sms/SMSStore;->SMS_URI:Landroid/net/Uri;

    .line 27
    const-string v0, "content://sms/conversations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/sms/SMSStore;->SMS_CONVERSATIONS:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lde/gdata/mobilesecurity/sms/SMSStore;->b:Landroid/content/Context;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/sms/SMSStore;->c:Landroid/content/ContentResolver;

    .line 91
    new-instance v0, Lde/gdata/mobilesecurity/sms/SMSTable;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/sms/SMSTable;-><init>()V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/sms/SMSTable;->getColumns()[Lde/gdata/mobilesecurity/database/Column;

    move-result-object v1

    .line 92
    array-length v0, v1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lde/gdata/mobilesecurity/sms/SMSStore;->a:[Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 94
    iget-object v2, p0, Lde/gdata/mobilesecurity/sms/SMSStore;->a:[Ljava/lang/String;

    aget-object v3, v1, v0

    invoke-interface {v3}, Lde/gdata/mobilesecurity/database/Column;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    return-void
.end method

.method public static getConversationsUri(I)Landroid/net/Uri;
    .locals 4

    .prologue
    .line 30
    const-string v0, "content://sms/conversations/%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAllSMS()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/sms/SMS;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 38
    iget-object v0, p0, Lde/gdata/mobilesecurity/sms/SMSStore;->c:Landroid/content/ContentResolver;

    sget-object v1, Lde/gdata/mobilesecurity/sms/SMSStore;->SMS_URI:Landroid/net/Uri;

    iget-object v2, p0, Lde/gdata/mobilesecurity/sms/SMSStore;->a:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    new-instance v2, Lde/gdata/mobilesecurity/sms/SMS;

    invoke-direct {v2, v0}, Lde/gdata/mobilesecurity/sms/SMS;-><init>(Landroid/database/Cursor;)V

    .line 42
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 45
    return-object v1
.end method

.method public getSMS([Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/sms/SMS;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lde/gdata/mobilesecurity/sms/SMSStore;->a:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lde/gdata/mobilesecurity/sms/SMSStore;->getSMS([Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSMS([Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/sms/SMS;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 54
    if-eqz p3, :cond_0

    .line 55
    invoke-static {p1}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->normalizeNumbers([Ljava/lang/String;)V

    .line 58
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 60
    iget-object v0, p0, Lde/gdata/mobilesecurity/sms/SMSStore;->c:Landroid/content/ContentResolver;

    sget-object v1, Lde/gdata/mobilesecurity/sms/SMSStore;->SMS_URI:Landroid/net/Uri;

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 61
    if-nez v1, :cond_1

    move-object v0, v6

    .line 83
    :goto_0
    return-object v0

    .line 62
    :cond_1
    const-string v0, "address"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 63
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v3

    .line 65
    :cond_2
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    new-instance v4, Lde/gdata/mobilesecurity/sms/SMS;

    invoke-direct {v4, v1}, Lde/gdata/mobilesecurity/sms/SMS;-><init>(Landroid/database/Cursor;)V

    .line 67
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 68
    array-length v7, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v7, :cond_2

    aget-object v8, p1, v0

    .line 69
    sget-object v9, Lde/gdata/mobilesecurity/sms/a;->a:[I

    invoke-virtual {v3, v5, v8}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 74
    invoke-virtual {v4, v8}, Lde/gdata/mobilesecurity/sms/SMS;->setAddress(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 81
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    .line 83
    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public removeSMS([Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 99
    if-eqz p2, :cond_0

    .line 100
    invoke-static {p1}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->normalizeNumbers([Ljava/lang/String;)V

    .line 102
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "thread_id"

    aput-object v3, v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lde/gdata/mobilesecurity/sms/SMSStore;->getSMS([Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 104
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 105
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/sms/SMS;

    .line 106
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/sms/SMS;->getThreadID()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_1
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 110
    iget-object v4, p0, Lde/gdata/mobilesecurity/sms/SMSStore;->c:Landroid/content/ContentResolver;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/sms/SMSStore;->getConversationsUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 111
    goto :goto_1

    .line 112
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 113
    const-string v0, "Delte count does not match"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 115
    :cond_3
    return-void
.end method

.method public saveSMS(Lde/gdata/mobilesecurity/sms/SMS;)V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lde/gdata/mobilesecurity/sms/SMSStore;->c:Landroid/content/ContentResolver;

    sget-object v1, Lde/gdata/mobilesecurity/sms/SMSStore;->SMS_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/sms/SMS;->getValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 119
    return-void
.end method

.method public saveSMS(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/sms/SMS;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Landroid/content/ContentValues;

    .line 123
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 124
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/sms/SMS;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/sms/SMS;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    aput-object v0, v2, v1

    .line 123
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/sms/SMSStore;->c:Landroid/content/ContentResolver;

    sget-object v1, Lde/gdata/mobilesecurity/sms/SMSStore;->SMS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 128
    return-void
.end method
