# encoding: utf-8

#  Copyright (c) 2012-2015, Pfadibewegung Schweiz. This file is part of
#  hitobito_pbs and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_pbs.

require 'spec_helper'

describe Event::KindsController do
  before { sign_in(people(:bulei)) }

  it 'POST create accepts documents_text' do
    post :create, event_kind: { label: 'Foo',
                                documents_text: '<b>bar</b>' }

    kind = assigns(:kind)
    expect(kind.reload.documents_text).to eq '<b>bar</b>'
  end

end
