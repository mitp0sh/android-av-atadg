.class public Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;

.field b:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

.field c:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

.field d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;

    .line 34
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->d:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method public write()V
    .locals 25

    .prologue
    .line 41
    new-instance v23, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->d:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 43
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;

    if-eqz v2, :cond_f

    .line 44
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;->getProfileId()Ljava/lang/Integer;

    move-result-object v14

    .line 46
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    .line 47
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 48
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 49
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 51
    move-object/from16 v0, p0

    iget-object v5, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;->getIncoming()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Incoming;

    move-result-object v5

    if-eqz v5, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;->getIncoming()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Incoming;

    move-result-object v2

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Incoming;->getMode()Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v20, v2

    .line 52
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;->getOutgoing()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Outgoing;

    move-result-object v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;->getOutgoing()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Outgoing;

    move-result-object v2

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Outgoing;->getMode()Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v21, v2

    .line 54
    :goto_1
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Incoming$Modes;->BLACKLIST:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/2addr v2, v3

    if-lez v2, :cond_1

    const/4 v10, 0x1

    .line 55
    :goto_2
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Outgoing$Modes;->BLACKLIST:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/2addr v2, v3

    if-lez v2, :cond_2

    const/16 v19, 0x1

    .line 57
    :goto_3
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Incoming$Modes;->ENABLE_PHONEBOOK:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/2addr v2, v3

    if-lez v2, :cond_3

    const/4 v2, 0x1

    move v11, v2

    .line 58
    :goto_4
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Outgoing$Modes;->ENABLE_PHONEBOOK:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/2addr v2, v3

    if-lez v2, :cond_4

    const/4 v2, 0x1

    move/from16 v22, v2

    .line 60
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;->getIncoming()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Incoming;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 61
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;->getIncoming()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Incoming;

    move-result-object v2

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Incoming;->getAllowAnonymousCalls()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :goto_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v12, v2

    .line 63
    :goto_7
    new-instance v2, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual/range {v23 .. v23}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMMSIncomingSet()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->d:Landroid/content/Context;

    const v5, 0x7f0d029f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-wide/32 v8, 0x5265c00

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "1111111"

    const/4 v9, 0x1

    invoke-direct/range {v2 .. v10}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ZZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->b:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    .line 66
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->b:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsIncoming(Z)V

    .line 67
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->b:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsOutgoing(Z)V

    .line 68
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->b:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsSms(Z)V

    .line 69
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->b:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_7

    if-eqz v10, :cond_6

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v3, v2}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setAllowAnonymousCalls(Z)V

    .line 71
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->b:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v2, v11}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIncludesTB(Z)V

    .line 73
    new-instance v11, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual/range {v23 .. v23}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMMSOutgoingSet()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->d:Landroid/content/Context;

    const v3, 0x7f0d02a0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const-wide/32 v2, 0x5265c00

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v17, "1111111"

    const/16 v18, 0x1

    invoke-direct/range {v11 .. v19}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ZZ)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->c:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    .line 76
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->c:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsIncoming(Z)V

    .line 77
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->c:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsOutgoing(Z)V

    .line 78
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->c:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsSms(Z)V

    .line 79
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->c:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIncludesTB(Z)V

    .line 81
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 82
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 84
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;->getIncoming()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Incoming;

    move-result-object v2

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Incoming;->getContact()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyUtil;->getEmptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/incoming/Contact;

    .line 86
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/incoming/Contact;->getPhoneNumber()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 87
    invoke-virtual {v9}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/incoming/Contact;->getPhoneNumber()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyUtil;->getEmptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 88
    new-instance v2, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;

    invoke-virtual {v9}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/incoming/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v5, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->normalizePhoneNumber(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget v8, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->ALLOW_REQUEST:I

    invoke-direct/range {v2 .. v8}, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 90
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 54
    :cond_1
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 55
    :cond_2
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 57
    :cond_3
    const/4 v2, 0x0

    move v11, v2

    goto/16 :goto_4

    .line 58
    :cond_4
    const/4 v2, 0x0

    move/from16 v22, v2

    goto/16 :goto_5

    .line 61
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 69
    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_8

    :cond_7
    if-eqz v10, :cond_8

    const/4 v2, 0x1

    goto/16 :goto_8

    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 95
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;->getOutgoing()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Outgoing;

    move-result-object v2

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Outgoing;->getContact()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyUtil;->getEmptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/outgoing/Contact;

    .line 97
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/outgoing/Contact;->getPhoneNumber()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 98
    invoke-virtual {v9}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/outgoing/Contact;->getPhoneNumber()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyUtil;->getEmptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 99
    new-instance v2, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;

    invoke-virtual {v9}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/outgoing/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v5, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->normalizePhoneNumber(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget v8, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->ALLOW_REQUEST:I

    invoke-direct/range {v2 .. v8}, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 101
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 106
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->b:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v2, v11}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setContacts(Ljava/util/ArrayList;)V

    .line 107
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->b:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->d:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->updateInDB(Landroid/content/Context;)I

    .line 109
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->c:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v2, v12}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setContacts(Ljava/util/ArrayList;)V

    .line 110
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->c:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->d:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->updateInDB(Landroid/content/Context;)I

    .line 112
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->b:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getId()I

    move-result v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setMMSIncomingId(I)V

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->c:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getId()I

    move-result v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setMMSOutgoingId(I)V

    .line 115
    invoke-virtual/range {v23 .. v23}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSLogDetails()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 116
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->d:Landroid/content/Context;

    const/16 v4, 0x29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MMS OutgoingFilter: is blacklist: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " ServerMode: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " callfilter error: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;->getOutgoing()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Outgoing;

    move-result-object v2

    if-nez v2, :cond_d

    const/4 v2, 0x1

    :goto_b
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v3, v4, v2, v5, v6}, Lde/gdata/mobilesecurity/services/WatcherService;->insertLogEntry(Landroid/content/Context;ILjava/lang/String;ZI)V

    .line 120
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->d:Landroid/content/Context;

    const/16 v4, 0x29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MMS IncomingFilter: is blacklist: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " ServerMode: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " callfilter error: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;->getIncoming()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Incoming;

    move-result-object v2

    if-nez v2, :cond_e

    const/4 v2, 0x1

    :goto_c
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v3, v4, v2, v5, v6}, Lde/gdata/mobilesecurity/services/WatcherService;->insertLogEntry(Landroid/content/Context;ILjava/lang/String;ZI)V

    .line 131
    :cond_c
    :goto_d
    return-void

    .line 116
    :cond_d
    const/4 v2, 0x0

    goto :goto_b

    .line 120
    :cond_e
    const/4 v2, 0x0

    goto :goto_c

    .line 126
    :cond_f
    invoke-virtual/range {v23 .. v23}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSLogDetails()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/gdata/mobilesecurity/mms/json/settings/CallFilterProxy;->d:Landroid/content/Context;

    const/16 v3, 0x29

    const-string v4, "no call filter received"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lde/gdata/mobilesecurity/services/WatcherService;->insertLogEntry(Landroid/content/Context;ILjava/lang/String;ZI)V

    goto :goto_d

    :cond_10
    move-object v12, v4

    goto/16 :goto_7

    :cond_11
    move-object/from16 v21, v3

    goto/16 :goto_1

    :cond_12
    move-object/from16 v20, v2

    goto/16 :goto_0
.end method
